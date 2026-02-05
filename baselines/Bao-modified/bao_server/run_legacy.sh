folder=./workloads/job-light-ranges/varying_value_distribution_queries/beta_distribution_2range
for i in 7_2 5_2 3_2 2_2 1_1 2_3 2_5 2_7
do
CUDA_VISIBLE_DEVICES=2 python3 baoctl.py --train_mode train \
	--dataset job-light-ranges \
	--repeat 0  \
	--alpha 0.5 \
	--train_query_file ${folder}/queries_1_columns/queries_1_columns_plans \
	--train_label_file ${folder}/queries_1_columns/queries_1_columns_time.txt \
	--save_folder ${folder}/queries_1_columns \
	--predict_query_file ${folder}/queries_4_columns/queries_4_columns_plans \
	--predict_label_file ${folder}/queries_4_columns/queries_4_columns_time.txt
done
CUDA_VISIBLE_DEVICES=2 python3 baoctl.py --train_mode train --dataset job-light-ranges --repeat 0  --alpha 0.5 --train_query_file ${folder}/queries_2_columns/queries_2_columns_plans --train_label_file ${folder}/queries_2_columns/queries_2_columns_time.txt --save_folder ${folder}/queries_2_columns --predict_query_file ${folder}/queries_4_columns/queries_4_columns_plans --predict_label_file ${folder}/queries_4_columns/queries_4_columns_time.txt
CUDA_VISIBLE_DEVICES=2 python3 baoctl.py --train_mode train --dataset job-light-ranges --repeat 0  --alpha 0.5 --train_query_file ${folder}/queries_3_columns/queries_3_columns_plans --train_label_file ${folder}/queries_3_columns/queries_3_columns_time.txt --save_folder ${folder}/queries_3_columns --predict_query_file ${folder}/queries_4_columns/queries_4_columns_plans --predict_label_file ${folder}/queries_4_columns/queries_4_columns_time.txt
CUDA_VISIBLE_DEVICES=2 python3 baoctl.py --train_mode train --dataset job-light-ranges --repeat 0  --alpha 0.5 --train_query_file ${folder}/queries_4_columns/queries_4_columns_plans --train_label_file ${folder}/queries_4_columns/queries_4_columns_time.txt --save_folder ${folder}/queries_4_columns --predict_query_file ${folder}/queries_4_columns/queries_4_columns_plans --predict_label_file ${folder}/queries_4_columns/queries_4_columns_time.txt
CUDA_VISIBLE_DEVICES=2 python3 baoctl.py --train_mode train --dataset job-light-ranges --repeat 0  --alpha 0.5 --train_query_file ${folder}/queries_5_columns/queries_5_columns_plans --train_label_file ${folder}/queries_5_columns/queries_5_columns_time.txt --save_folder ${folder}/queries_5_columns --predict_query_file ${folder}/queries_4_columns/queries_4_columns_plans --predict_label_file ${folder}/queries_4_columns/queries_4_columns_time.txt
CUDA_VISIBLE_DEVICES=2 python3 baoctl.py --train_mode train --dataset job-light-ranges --repeat 0  --alpha 0.5 --train_query_file ${folder}/queries_6_columns/queries_6_columns_plans --train_label_file ${folder}/queries_6_columns/queries_6_columns_time.txt --save_folder ${folder}/queries_6_columns --predict_query_file ${folder}/queries_4_columns/queries_4_columns_plans --predict_label_file ${folder}/queries_4_columns/queries_4_columns_time.txt
CUDA_VISIBLE_DEVICES=2 python3 baoctl.py --train_mode train --dataset job-light-ranges --repeat 0  --alpha 0.5 --train_query_file ${folder}/queries_7_columns/queries_7_columns_plans --train_label_file ${folder}/queries_7_columns/queries_7_columns_time.txt --save_folder ${folder}/queries_7_columns --predict_query_file ${folder}/queries_4_columns/queries_4_columns_plans --predict_label_file ${folder}/queries_4_columns/queries_4_columns_time.txt
