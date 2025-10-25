import numpy as np
import csv
import random
import psycopg2 as pg
from datetime import datetime
import time
import os
import sys
import storage
import json
import argparse

#mask_columns = ['title.latitude', 'title.longitude', 'movie_info.x', 'movie_info.y', 'movie_info.z']
mask_columns = []

def column_range(table, column):
    conn = pg.connect(dbname='stats', user='postgres', port='5434', host='localhost')
    conn.set_session(autocommit=True)
    cursor = conn.cursor()
    sql = f"select distinct {column} from {table};"
    cursor.execute(sql)
    result = cursor.fetchall()
    years = [i[0] for i in result]
    years = np.array(years)
    low, high = years.min(), years.max()
    conn.close()
    return low, high

c_CreationDate_low, c_CreationDate_high = column_range('comments', 'CreationDate')
c_Score_low, c_Score_high = column_range('comments', 'Score')
p_Score_low, p_Score_high = column_range('posts', 'Score')
p_CommentCount_low, p_CommentCount_high = column_range('posts', 'CommentCount')
p_CreationDate_low, p_CreationDate_high = column_range('posts', 'CreationDate')
ph_CreationDate_low, ph_CreationDate_high = column_range('postHistory', 'CreationDate')
u_DownVotes_low, u_DownVotes_high = column_range('users', 'DownVotes')
u_UpVotes_low, u_UpVotes_high = column_range('users', 'UpVotes')
b_Date_low, b_Date_high = column_range('badges', 'Date')
v_CreationDate_low, v_CreationDate_high = column_range('votes', 'CreationDate')
v_VoteTypeId_low, v_VoteTypeId_high = column_range('votes', 'VoteTypeId')
pl_CreationDate_low, pl_CreationDate_high = column_range('postLinks', 'CreationDate')

datetime_column = ['c.CreationDate', 'p.CreationDate', 'ph.CreationDate', 'b.Date', 'pl.CreationDate', 'v.CreationDate']

column_min_max_vals = {
    #'c.CreationDate': (c_CreationDate_low, c_CreationDate_high),
    #'c.Score': (c_Score_low, c_Score_high),
    #'movie_companies.company_id': (mc_company_id_low, mc_company_id_high),
    'p.Score': (p_Score_low, p_Score_high),
    'p.CommentCount': (p_CommentCount_low, p_CommentCount_high),
    #'p.CreationDate': (p_CreationDate_low, p_CreationDate_high),
    #'ph.CreationDate': (ph_CreationDate_low, ph_CreationDate_high),
    'u.DownVotes': (u_DownVotes_low, u_DownVotes_high),
    #'pl.CreationDate': (pl_CreationDate_low, pl_CreationDate_high),
    'v.CreationDate': (v_CreationDate_low, v_CreationDate_high),
    'v.VoteTypeId': (v_VoteTypeId_low, v_VoteTypeId_high),
    #'u.UpVotes': (u_UpVotes_low, u_UpVotes_high),
    'u.DownVotes': (u_DownVotes_low, u_DownVotes_high),
    'b.Date': (b_Date_low, b_Date_high)
    #'movie_info_idx.info_type_id': (mi_idx_info_type_id_low, mi_idx_info_type_id_high),
    #'movie_keyword.movie_id': (mk_movie_id_low, mk_movie_id_high)
}

# Step 2: 定义两个 workload 的 beta 参数（每列单独）
beta_a, beta_b = 1, 1 
workload_beta_params = {
    'workload_A': {
        #'c.CreationDate': (beta_a, beta_b),    # 偏早
        #'c.Score': (beta_a, beta_b),    # 偏早
        #'movie_companies.company_id': (3, 4),
        'p.Score': (beta_a, beta_b),
        'p.CommentCount': (beta_a, beta_b),
        #'p.CreationDate': (beta_a, beta_b),
        #'ph.CreationDate': (beta_a, beta_b),  # 偏晚
        'u.DownVotes': (beta_a, beta_b),
        #'pl.CreationDate': (beta_a, beta_b),
        'v.CreationDate': (beta_a, beta_b),
        'v.VoteTypeId': (beta_a, beta_b),
        #'u.UpVotes': (beta_a, beta_b),
        'b.Date': (beta_a, beta_b)
        #'movie_info_idx.info_type_id': (beta_a, beta_b), # 偏早
        #'movie_keyword.movie_id': (beta_a, beta_b)
    },
    # 'workload_B': {
    #     'title.production_year': (beta_b, beta_a),    # 偏晚
    #     #'movie_companies.company_id': (4, 3),
    #     'cast_info.role_id': (beta_b, beta_a),
    #     'movie_info.info_type_id': (beta_b, beta_a),  # 偏晚
    #     #'movie_info_idx.info_type_id': (beta_b, beta_a), # 偏早
    #     #'movie_keyword.movie_id': (beta_b, beta_a)
    # }
}


def execute_query(sql):
    start = time.time()
    while True:
        try:
            conn = pg.connect(dbname='stats', user='zizhongmeng', port='5434', host='localhost')
            #conn.set_session(autocommit=True)
            cursor = conn.cursor()
            cursor.execute(f"SET enable_bao TO True")
            cursor.execute(f"SET enable_bao_selection TO False")
            cursor.execute(f"SET enable_bao_rewards TO True")
            cursor.execute(f"SET bao_num_arms TO 5")
            cursor.execute("SET statement_timeout TO 300000")
            cursor.execute(sql)
            result = cursor.fetchall()
            conn.close()
            true_card = result[0][0]
            break
        except:
            return 0, -1
    stop = time.time()
    return true_card, stop - start

# Step 3: 采样函数
def sample_range(col_min_max_vals, beta_params):
    a, b = beta_params
    low, high = col_min_max_vals
    p1 = np.random.beta(a, b)
    p2 = np.random.beta(a, b)
    lb = low + p1 * (high - low) 
    ub = low + p2 * (high - low)
    
    # 确保下界 < 上界
    #lb, ub = np.minimum(lb, ub).astype(int), np.maximum(lb, ub).astype(int)
    return lb, ub 

# Step 4: Workload 生成函数
def generate_queries(num_queries, beta_params):
    queries = []
    allcsvs = []
    true_cards = []
    run_times = []
    for _ in range(num_queries):
        while True:
            lbs = {}
            ubs = {}
            for col in column_min_max_vals:
                lb, ub = sample_range(column_min_max_vals[col], beta_params[col])
                if col in datetime_column:
                    lb, ub = np.minimum(lb.replace(microsecond=0), ub.replace(microsecond=0)), np.maximum(lb.replace(microsecond=0), ub.replace(microsecond=0))
                else:
                    lb, ub = np.minimum(lb, ub).astype(int), np.maximum(lb, ub).astype(int)
                lbs[col] = lb
                ubs[col] = ub

            #sqlline = f"""SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId""".strip()
            #csvline = f"""postHistory ph,posts p,users u,badges b#u.Id=p.OwnerUserId,p.OwnerUserId=ph.UserId,ph.UserId=b.UserId#""".strip()
            #sqlline = f""" SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u, postLinks as pl WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.PostId = pl.PostId""".strip()
            #csvline = f"""comments c,postHistory ph,users u,postLinks pl#u.Id=c.UserId,c.UserId=ph.UserID,c.PostId=pl.PostId#""".strip()
            sqlline = f"""SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId""".strip()
            csvline = f"""votes v,posts p,badges b,users u#p.Id=v.PostId,u.Id=p.OwnerUserId,u.Id=b.UserId#""".strip()
            for col in column_min_max_vals:
                if col in datetime_column:
                    sqlline += f" AND {col}>'{lbs[col]}'::timestamp AND {col}<'{ubs[col]}'::timestamp"  
                    low_dt = int(lbs[col].timestamp())
                    high_dt = int(ubs[col].timestamp())
                    csvline += f"{col},>,{low_dt},{col},<,{high_dt},"
                else:
                    sqlline += f" AND {col}>{lbs[col]} AND {col}<{ubs[col]}"
                    csvline += f"{col},>,{lbs[col]},{col},<,{ubs[col]},"
                #op = random.choice(['<', '>'])
                #sqlline += f" AND {col}{op}{ubs[col]}"
                #csvline += f"{col},{op},{ubs[col]},"
            sqlline = sqlline + ';'
            csvline = csvline[:-1]
            true_card, run_time = execute_query(sqlline)
            csvline += f"#{true_card}"
            #print(sqlline)
            true_cards.append(true_card)
            run_times.append(run_time)
            queries.append(sqlline)
            allcsvs.append(csvline)
            if true_card >= 1:
                print(csvline, flush=True)
                break

    return queries, allcsvs, run_times, true_cards

# def power_law_sample(size, alpha, low, high, reverse=False):
#     samples = np.random.power(alpha, size)
#     if reverse:
#         samples = 1 - samples
#     scaled = low + samples * (high - low)
#     return scaled.astype(int)

# def beta_sample(num_queries, beta_a, beta_b, low, high):
#     lower_beta = np.random.beta(beta_a, beta_b, size=num_queries)
#     upper_beta = np.random.beta(beta_a, beta_b, size=num_queries)
    
    
#     lower_bounds = low + lower_beta * (high - low) 
#     upper_bounds = low + upper_beta * (high - low)
    
#     # 确保下界 < 上界
#     lower_bounds, upper_bounds = np.minimum(lower_bounds, upper_bounds), np.maximum(lower_bounds, upper_bounds)
#     return lower_bounds.astype(int), upper_bounds.astype(int)


# def generate_range_queries(lower_bounds, upper_bounds):
#     sqls = []
#     csvs = []
#     for lb, ub in zip(lower_bounds, upper_bounds):
#         sqls.append(f"SELECT * FROM title WHERE title.production_year < {ub} AND title.production_year > {lb};")
#         csvs.append(f"title##title.production_year,>,{lb},title.production_year,<,{ub}#")
#     return sqls, csvs
#    return [
#        f"SELECT * FROM title WHERE production_year < {ub} AND production_year > {lb};"
#        for lb, ub in zip(lower_bounds, upper_bounds)
#        if lb <= ub  # 只保留合法区间
#    ]


# conn = pg.connect(dbname='imdb', user='peizhi', port='5434', host='localhost')
# conn.set_session(autocommit=True)
# cursor = conn.cursor()
# sql = "select distinct title.production_year from title;"
# cursor.execute(sql)
# result = cursor.fetchall()
# years = [i[0] for i in result]
# years = np.array(years)
# low, high = years.min(), years.max()
# # Workload A: both bounds from lower side (偏早)
# query_num  = 1000 
# beta_a = 2 
# beta_b = 4 
#A1 = power_law_sample(query_num, alpha=alpha, low=low, high=high, reverse=False)
#A2 = power_law_sample(query_num, alpha=alpha, low=low, high=high, reverse=False)
#A_lower = [min(A1[i], A2[i]) for i in range(query_num)]
#A_upper = [max(A1[i], A2[i]) for i in range(query_num)]
# A_lower, A_upper = beta_sample(query_num, beta_a, beta_b, low, high)

# Workload B: both bounds from upper side (偏晚)
#B1 = power_law_sample(query_num, alpha=alpha, low=low, high=high, reverse=True)
#B2 = power_law_sample(query_num, alpha=alpha, low=low, high=high, reverse=True)
#B_lower = [min(B1[i], B2[i]) for i in range(query_num)]
#B_upper = [max(B1[i], B2[i]) for i in range(query_num)]
#B_lower, B_upper = beta_sample(query_num, beta_b, beta_a, low, high)

storage.clear_experience()
parser = argparse.ArgumentParser()
parser.add_argument('--beta_a', type=int, default=1, help='Alpha parameter (beta_a) of Beta distribution')
parser.add_argument('--beta_b', type=int, default=1, help='Beta parameter (beta_b) of Beta distribution')
parser.add_argument('--num_queries', type=int, default=1, help='Number of generated queries')
args = parser.parse_args()

beta_a = args.beta_a
beta_b = args.beta_b
num_queries = args.num_queries 
folder = "./stats/varying_value_distribution_queries/beta_distribution_2range/"
if os.path.exists(folder) is False:
    os.makedirs(folder)
A_sqlfile = open(f"{folder}value_distribution_{beta_a}_{beta_b}.sql", 'w')
#B_sqlfile = open(f"{folder}value_distribution_{beta_b}_{beta_a}.sql", 'w')
A_csvfile = open(f"{folder}value_distribution_{beta_a}_{beta_b}.csv", 'w')
#B_csvfile = open(f"{folder}value_distribution_{beta_b}_{beta_a}.csv", 'w')
A_timefile = open(f"{folder}value_distribution_{beta_a}_{beta_b}_time.txt", 'w')
#B_timefile = open(f"{folder}value_distribution_{beta_b}_{beta_a}_time.txt", 'w')
A_folder_path = f"{folder}value_distribution_{beta_a}_{beta_b}_plans"
#B_folder_path = f"{folder}value_distribution_{beta_b}_{beta_a}_plans"
if os.path.exists(A_folder_path) is False:
    os.makedirs(A_folder_path)
#if os.path.exists(B_folder_path) is False:
#    os.makedirs(B_folder_path)

storage.clear_experience()
A_queries, A_csvs, A_times, A_cards = generate_queries(num_queries, workload_beta_params['workload_A'])
A_all_experience = storage.experience()
#B_queries, B_csvs, B_times, B_cards = generate_queries(num_queries, workload_beta_params['workload_B'])
#B_all_experience = storage.experience()



idx = 0
for i in range(len(A_all_experience)):
    exp = A_all_experience[i]
    if A_cards[i] >= 1:
        outfile = f"{A_folder_path}/sql{idx}_plan.json"
        A_sqlfile.write(A_queries[i] + '\n')
        A_csvfile.write(A_csvs[i] + '\n')
        A_timefile.write(str(A_times[i] * 1000) + '\n')
        with open(outfile, 'w') as f:
            json.dump(exp, f)
        idx += 1
    
# idx = 0
# for i in range(len(B_all_experience)):
#     exp = B_all_experience[i]
#     if B_cards[i] >= 10:
#         outfile = f"{B_folder_path}/sql{idx}_plan.json"
#         B_sqlfile.write(B_queries[i] + '\n')
#         B_csvfile.write(B_csvs[i] + '\n')
#         B_timefile.write(str(B_times[i] * 1000) + '\n')
#         with open(outfile, 'w') as f:
#             json.dump(exp, f)
#         idx += 1
 
