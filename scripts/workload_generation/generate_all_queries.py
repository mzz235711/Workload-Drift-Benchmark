import numpy as np
import csv
import random
import sys
import psycopg2 as pg
import os
import time
import json
from datetime import datetime
import storage

def execute_query(sql):
    print(sql, flush=True)
    start = time.time()
    while True:
        try:
            conn = pg.connect(dbname='imdb', user='postgres', port='5434', host='localhost')
            #conn.set_session(autocommit=True)
            cursor = conn.cursor()
            cursor.execute(f"SET enable_bao TO True")
            cursor.execute(f"SET enable_bao_selection TO False")
            cursor.execute(f"SET enable_bao_rewards TO True")
            cursor.execute(f"SET bao_num_arms TO 5")
            cursor.execute("SET statement_timeout TO 500000")
            cursor.execute(sql)
            result = cursor.fetchall()
            conn.close()
            true_card = result[0][0]
            break
        except:
            return 0, -1
    stop = time.time()
    return true_card, stop - start



def get_base_query(table, columns, key=None):
    column_str = ",".join(columns)
    predicate_str = ""
    conn = pg.connect(dbname='imdb', user='postgres', port='5434', host='localhost')
    #conn.set_session(autocommit=True)
    cursor = conn.cursor()
    for col in columns:
        predicate_str += "and {} is not null ".format(col)
    if table == "title":
        if key is not None:
            sql = "select id,{} from title where id={} {} order by random() limit 10".format(column_str, key, predicate_str)
        else:
            sql = "select id,{} from title where {} order by random() limit 10".format(column_str, predicate_str[4:])
    else:
        if key is not None:
            sql = "select movie_id,{} from {} where movie_id={} {} order by random() limit 10".format(column_str, table, key, predicate_str)
        else:
            sql = "select movie_id,{} from {} where {} order by random() limit 10".format(column_str, table, predicate_str[4:])
    cursor.execute(sql)
    result = cursor.fetchall()
    conn.close()
    #print(result)
    if len(result) == 0:
        return None, None
    select_id = result[0][0]
    select_val = [[result[j][i+1] for j in range(len(result))] for i in range(len(columns))]
    return select_id, select_val




mask_columns = ['title.latitude', 'title.longitude', 'movie_info.x', 'movie_info.y', 'movie_info.z']
tables = ['cast_info', 'movie_companies', 'movie_info', 'movie_info_idx', 'movie_keyword']
columns = {
    "cast_info": ["role_id", "nr_order"],
    "movie_companies": ["company_type_id"],
    "movie_info": ["info_type_id"],
    "movie_info_idx": ["info_type_id"],
    "movie_keyword": ["keyword_id"],
    "title": ["imdb_index", "production_year", "phonetic_code", "season_nr", "episode_nr", "series_years", "kind_id"]
} 

random.seed(datetime.now().timestamp())
#csv_file = '/home_nfs/postgres/zizhong/ICE/workloads/job-light/train_origin.csv'

column_min_max_vals = {}
query_num = 10000 
gen_type = "job-light_equal_distribution"
folder = "."
min_max_file='./column_min_max_vals.csv'
csvfile = open('{}/job-light-ranges/{}_{}.csv'.format(folder, gen_type, query_num), 'w')
sqlfile = open('{}/job-light-ranges/{}_{}.sql'.format(folder, gen_type, query_num), 'w')
timefile = open('{}/job-light-ranges/{}_{}_time.txt'.format(folder, gen_type, query_num), 'w')
folder_path = "{}/job-light-ranges/{}_{}_plans".format(folder, gen_type, query_num)
if os.path.exists(folder_path) is False:
    os.makedirs(folder_path)
all_sqls = []
all_csvs = []
all_times = []
all_cards = []
with open(min_max_file, 'r') as f:
    data_raw = list(list(rec) for rec in csv.reader(f, delimiter=','))
    for i, row in enumerate(data_raw):
        if i == 0:
            continue
        column_min_max_vals[row[0]] = [float(row[1]), float(row[2])]

for i in range(query_num):
    print(i)
    smallcard = True
    tablenum = random.randint(0, len(tables) - 1)
    if tablenum == 0:
        query_tables = np.random.choice(tables + ["title"], size=1)
    else:
        query_tables = np.random.choice(tables, size=tablenum, replace=False).tolist()
        query_tables.append("title")
    while smallcard is True:
        sql = "select count(*) from "
        queried_columns = []
        queried_column_dict = {} 
        if tablenum == 0:
            for q_t in query_tables:
                queried_column_dict[q_t] = []
                if q_t == "title":
                    queried_column_num = random.randint(1, 4)
                    queried_column = np.random.choice(columns['title'], size = queried_column_num, replace=False)
                    for q_c in queried_column:
                        queried_columns.append("title." + q_c)
                        queried_column_dict['title'].append("title." + q_c)
                else:
                    have_column = random.randint(0, 1)
                    if have_column == 1:
                        queried_column = np.random.choice(columns[q_t], size=1)
                        for c in queried_column:
                            queried_columns.append(q_t + "." + c)
                            queried_column_dict[q_t].append(q_t + "." + c)
        else:
            for q_t in query_tables:
                queried_column_dict[q_t] = [] 
                if q_t != "title":
                    have_column = random.randint(0, 1)
                    if have_column == 1:
                        queried_column = np.random.choice(columns[q_t], size=1)
                        for c in queried_column:
                            queried_columns.append(q_t + "." + c)
                            queried_column_dict[q_t].append(q_t + "." + c)
            queried_column_dict["title"] = []
            queried_column_num = random.randint(1, 4)
            queried_column = np.random.choice(columns['title'], size = queried_column_num, replace=False)
            for q_c in queried_column:
                queried_columns.append("title." + q_c)
                queried_column_dict[q_t].append("title." + q_c)
        csvquery = ''
        sql += ','.join(query_tables)
        sql += ' where '
        csvquery += ','.join(tables)
        csvquery += '#' 
        joins = []
        if len(query_tables) > 1:
            for t in query_tables:
                if t != "title":
                    joins.append("title.id={}.movie_id".format(t))
        for j in joins:
            if len(j) > 0:
                sql += (j + ' and ')
                csvquery += (j + ',')
        if csvquery[-1] == ',':
            csvquery = csvquery[:-1] + '#'
        else:
            csvquery += '#'
        select_id = None
        for i, q_t in enumerate(query_tables):
            #print(queried_column_dict[q_t])
            if len(queried_column_dict[q_t]) == 0:
                continue
            select_id, result_val = get_base_query(q_t, queried_column_dict[q_t], key=select_id)
            if select_id is None:
                continue
            #print(result_val)
            for j, col in enumerate(queried_column_dict[q_t]):
                minval = column_min_max_vals[col][0]
                maxval = column_min_max_vals[col][1]
                #if gen_type == 'train':
                #    maxval = minval + int((maxval - minval) / 2)
                #else:
                #    minval = minval + int((maxval - minval) / 2)
                if maxval - minval < 100:
                    op = np.random.choice(['<', '=', '>'], size=1)
                else:
                    op = np.random.choice(['<', '>'], size=1)
                op = op[0]
                if op == "<" or op == ">":
                    #choice = random.randint(0, 1)
                    choice = 0 
                    if choice == 0:
                        if op == ">":
                            val = np.min(result_val[j])
                        else:
                            val = np.max(result_val[j])
                        sql += (col + op + str(val) + ' and ')
                        csvquery += (col + ',' + op + ',' + str(val) + ',')
                    else:
                        min_val = np.min(result_val[j])
                        max_val = np.max(result_val[j])
                        sql += (col + ">" + str(min_val) + ' and ' +  col + "<" +  str(max_val) + " and ")
                        csvquery += (col + ',<,' + str(max_val) + ',' + col + ',>,' + str(min_val) + ',')
                else:
                    val = np.random.choice(result_val[j], size=1)[0]
                    sql += (col + op + str(val) + ' and ')
                    csvquery += (col + ',' + op + ',' + str(val) + ',')
        if sql[-2] == 'd':
            sql = sql[:-5] + ';'
        else:
            sql = sql[:-7] + ';'
        if csvquery[-1] == ',':
            csvquery = csvquery[:-1] + '#'
        else:
            csvquery += '#'
        true_card, pg_time = execute_query(sql)
        print(sql + " " + str(true_card), flush=True)
        if true_card > 10:
            smallcard = False
            csvquery += str(true_card)
            all_csvs.append(csvquery)
            all_sqls.append(sql)
            all_times.append(pg_time)
            print("{} {} {}".format(sql, true_card, pg_time), flush = True)

all_experience = storage.experience()
print(len(all_experience))
idx = 0
for i, exp in enumerate(all_experience):
    if all_times[i] >= 0:
        outfile = "{}/sql{}_plan.json".format(folder_path, idx)
        sqlfile.write(all_sqls[i] + '\n')
        csvfile.write(all_csvs[i] + '\n')
        timefile.write(str(all_times[i] * 1000) + "\n")
        with open(outfile, 'w') as f:
            json.dump(exp, f)
        idx += 1



        

