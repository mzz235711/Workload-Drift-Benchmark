import psycopg2
import os
import sys
import random
import argparse
import dataset
import numpy as np
from time import time, sleep

parser = argparse.ArgumentParser("Bao for PostgreSQL Controller")
parser.add_argument("--dataset", type=str, help="Dataset")
parser.add_argument("--train_mode", type=str, default="train", help="train, adaptation or predict")
parser.add_argument("--contrastive", action='store_true', help='use contrastive learning')
parser.add_argument("--meta", action="store_true", help='use meta learning')        
parser.add_argument("--repeat", type=int, default=10, help='hyperparameter')
parser.add_argument("--alpha", type=float, default=0.25, help='hyperparameter')
parser.add_argument("--lr", type=float, default=0.001, help='hyperparameter')
parser.add_argument("--bao", action="store_true", help='use Bao')        

parser.add_argument("--train_query_file", type=str, default=None)
parser.add_argument("--predict_query_file", type=str, default=None)
parser.add_argument("--save_folder", type=str, default=None)
parser.add_argument("--adaptation_query_file", type=str, default=None)
parser.add_argument("--train_label_file", type=str, default=None)
parser.add_argument("--predict_label_file", type=str, default=None)
parser.add_argument("--adaptation_label_file", type=str, default=None)
args =  parser.parse_args()
if args.dataset == "job-light-ranges":
    dbname = "imdb"
else:
    dbname = args.dataset


#USE_BAO = True
USE_BAO = True 
PG_CONNECTION_STR = "dbname={} user=zizhongmeng host=localhost port=5434".format(dbname)

# https://stackoverflow.com/questions/312443/
def chunks(lst, n):
    """Yield successive n-sized chunks from lst."""
    for i in range(0, len(lst), n):
        yield lst[i:i + n]


def run_query(sql, bao_select=False, bao_reward=False):
    start = time()
    avg_time = 0
    #sql = "explain analyze " + sql
    while True:
        try:
            conn = psycopg2.connect(PG_CONNECTION_STR)
            cur = conn.cursor()
            cur.execute(f"SET enable_bao TO {bao_select or bao_reward}")
            cur.execute(f"SET enable_bao_selection TO {bao_select}")
            cur.execute(f"SET enable_bao_rewards TO {bao_reward}")
            cur.execute("SET bao_num_arms TO 5")
            cur.execute("SET statement_timeout TO 1100000")
            cur.execute(sql)
            cur.fetchall()
            conn.close()
            break
        except Exception as e:
            print(e)
            sleep(1)
            #continue
            break
    stop = time()
    return stop - start

if args.dataset == "test":
    train_file, predict_file, save_folder, adaptation_file =  dataset.load_test_dataset()
elif args.dataset == "job-light-ranges":
    train_file, predict_file, save_folder, adaptation_file, train_label_file, predict_label_file, adaptation_label_file = dataset.load_job_light_dataset()
elif args.dataset == "job":
    train_file, predict_file, save_folder, adaptation_file, train_label_file, predict_label_file, adaptation_label_file = dataset.load_job_dataset()
elif args.dataset == "dsb":
    train_file, predict_file, save_folder, adaptation_file, train_label_file, predict_label_file, adaptation_label_file = dataset.load_dsb_dataset()
elif args.dataset == 'stats':
    train_file, predict_file, save_folder, adaptation_file, train_label_file, predict_label_file, adaptation_label_file = dataset.load_stats_dataset()
#predict_query_file = predict_file[:-6] + ".sql"


if args.train_query_file is not None:
    train_file = args.train_query_file
if args.predict_query_file is not None:
    predict_file = args.predict_query_file
if args.save_folder is not None:
    save_folder = args.save_folder
if args.adaptation_query_file is not None:
    adaptation_file = args.adaptation_query_file
if args.train_label_file is not None:
    train_label_file = args.train_label_file
if args.predict_label_file is not None:
    predict_label_file = args.predict_label_file
if args.adaptation_label_file is not None:
    adaptation_label_file = args.adaptation_label_file
predict_file = predict_file[:-6] + ".sql"
#infile = open(train_file, 'r')
#train_queries = []
#with open(train_file) as f:
#    train_queries.extend(f.readlines())
#with open(adaptation_file) as f:
#    lines = f.readlines()
#    train_queries.extend(lines)
#    for i in range (args.repeat):
#        train_queries.extend(lines)
#print("Read", len(train_queries), "queries.")
print("Using Bao:", USE_BAO)

random.seed(42)
#query_sequence = random.choices(queries, k=5)
#pg_chunks, *bao_chunks = list(chunks(queries, 25))

#print("Executing queries using PG optimizer for initial training")

#for q in train_queries:
#    pg_time = run_query(q, bao_reward=True)
#    print("x", "x", time(), q, pg_time, "PG", flush=True)

prediction_queries = []
with open(predict_file) as f:
    prediction_queries = f.readlines()
command = "python3 baoctl.py --train_mode retrain --dataset {} --repeat {} --alpha {} --train_query_file {} --train_label_file {} --save_folder {} --predict_query_file {} --predict_label_file {}".format(args.dataset, args.repeat, args.alpha, train_file, train_label_file, save_folder, predict_file, predict_label_file)
e2efile = "/"
if args.contrastive:
    command += " --contrastive"
    e2efile += "contrastive_"
if args.meta:
    command += " --meta"
    e2efile += "meta_"
e2efile += "e2e_time_new.txt"
print(command)
#os.system(command)
total_time = 0
repeat_time = 1 
all_time = []
#start_time = time.time()
for i in range(repeat_time):
    for c_idx, query in enumerate(prediction_queries):
        #if USE_BAO:
        #    os.system("cd bao_server && python3 baoctl.py --retrain")
        #    os.system("sync")
        #print(query)
        query = query.split('||')[0]
        q_time = run_query(query, bao_reward=False, bao_select=USE_BAO)
        print(c_idx, time(), q_time, flush=True)
        total_time += q_time
        all_time.append(q_time)
#end_time = time.time()
print("Total time: {}".format(total_time / (repeat_time)))
#timefile = save_folder + "/e2e_time.txt"
timefile = save_folder + e2efile
np.savetxt(timefile, all_time)
