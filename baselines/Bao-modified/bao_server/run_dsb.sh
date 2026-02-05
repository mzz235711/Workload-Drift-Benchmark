dataset=job-light-ranges
testid=7_2
#for i in 7_2 5_2 3_2 2_2 1_1 2_3 2_5 2_7
#do
#    CUDA_VISIBLE_DEVICES=2 python3 -u baoctl.py \
#	    --train_mode train \
#	    --dataset ${dataset} \
#	    --repeat 0 \
#	    --alpha 0.5 \
#	    --train_query_file workloads/${dataset}/varying_value_distribution_queries/beta_distribution_2range/value_distribution_${i}/value_distribution_${i}_plans \
#            --train_label_file workloads/${dataset}/varying_value_distribution_queries/beta_distribution_2range/value_distribution_${i}/value_distribution_${i}_time.txt \
#	    --save_folder workloads/${dataset}/varying_value_distribution_queries/beta_distribution_2range/value_distribution_${i} \
#	    --predict_query_file workloads/${dataset}/varying_value_distribution_queries/beta_distribution_2range/value_distribution_${testid}/value_distribution_${testid}_plans \
#	    --predict_label_file workloads/${dataset}/varying_value_distribution_queries/beta_distribution_2range/value_distribution_${testid}/value_distribution_${testid}_time.txt
    #mkdir -p exp_models/${dataset}/varying_value_queries/value_distribution_${i}
    #cp -r bao_default_model exp_models/${dataset}/varying_value_queries/value_distribution_${i}/
#done

#testid=4
#for i in 1 2 3 4 5 6 7
#do
#    CUDA_VISIBLE_DEVICES=2 python3 -u baoctl.py \
#	    --train_mode train --dataset ${dataset} \
#	    --repeat 0 \
#	    --alpha 0.5 \
#	    --contrastive \
#	    --train_query_file workloads/${dataset}/varying_column_queries/queries_${i}_columns/queries_${i}_columns_plans \
#	    --train_label_file workloads/${dataset}/varying_column_queries/queries_${i}_columns/queries_${i}_columns_time.txt \
#	    --save_folder workloads/${dataset}/varying_column_queries/queries_${i}_columns \
#	    --predict_query_file workloads/${dataset}/varying_column_queries/queries_${testid}_columns/queries_${testid}_columns_plans \
#	    --predict_label_file workloads/${dataset}/varying_column_queries/queries_${testid}_columns/queries_${testid}_columns_time.txt
    #mkdir -p exp_models/${dataset}/varying_column_queries/queries_${i}_columns
    #cp -r bao_default_model exp_models/${dataset}/varying_column_queries/queries_${i}_columns/
#done
#types=tables
#testid=4
#for i in 2 3 4 5 6
#do
#    CUDA_VISIBLE_DEVICES=2 python3 -u baoctl.py \
#	    --train_mode train --dataset ${dataset} \
#	    --repeat 0  \
#	    --alpha 0.5 \
#	    --train_query_file workloads/${dataset}/varying_table_queries/queries_${i}_tables/queries_${i}_tables_plans \
#	    --train_label_file workloads/${dataset}/varying_table_queries/queries_${i}_tables/queries_${i}_tables_time.txt \
#	    --save_folder workloads/${dataset}/varying_table_queries/queries_${i}_tables \
#	    --predict_query_file workloads/${dataset}/varying_table_queries/queries_${testid}_tables/queries_${testid}_tables_plans \
#	    --predict_label_file workloads/${dataset}/varying_table_queries/queries_${testid}_tables/queries_${testid}_tables_time.txt
    #mkdir -p exp_models/${dataset}/varying_table_queries/queries_${i}_tables
    #cp -r bao_default_model exp_models/${dataset}/varying_table_queries/queries_${i}_tables
#done

types=label
CUDA_VISIBLE_DEVICES=6 python3 -u baoctl.py \
	    --train_mode train \
	    --dataset ${dataset} \
            --repeat 0 \
	    --alpha 0.5 \
	    --train_query_file workloads/${dataset}/joblight_train_5000_plans \
	    --train_label_file workloads/${dataset}/joblight_train_5000_time.txt \
	    --save_folder workloads/${dataset} \
	    --predict_query_file workloads/${dataset}/joblight_train_5000_plans \
	    --predict_label_file workloads/${dataset}/joblight_train_5000_time.txt
    #mkdir -p exp_models/${dataset}/varying_label_queries/${i}_label_queries
    #cp -r bao_default_model exp_models/${dataset}/varying_label_queries/${i}_label_queries

