dataset=job-light-ranges
cudaid=3
testid=7_2
for i in 7_2 5_2 3_2 2_2 1_1 2_3 2_5 2_7
do
    CUDA_VISIBLE_DEVICES=${cudaid} python3 -u run_queries.py \
	    --train_mode retrain \
	    --dataset ${dataset} \
	    --repeat 0 \
	    --alpha 0.5 \
	    --contrastive \
	    --meta \
	    --train_query_file workloads/${dataset}/varying_value_distribution_queries_200/beta_distribution_2range/value_distribution_${i}/value_distribution_${i}_plans \
            --train_label_file workloads/${dataset}/varying_value_distribution_queries_200/beta_distribution_2range/value_distribution_${i}/value_distribution_${i}_time.txt \
	    --save_folder workloads/${dataset}/varying_value_distribution_queries_200/beta_distribution_2range/value_distribution_${i} \
	    --predict_query_file workloads/${dataset}/varying_value_distribution_queries_200/beta_distribution_2range/value_distribution_${testid}/value_distribution_${testid}_plans \
	    --predict_label_file workloads/${dataset}/varying_value_distribution_queries_200/beta_distribution_2range/value_distribution_${testid}/value_distribution_${testid}_time.txt
    #mkdir -p exp_models/${dataset}/varying_value_queries/value_distribution_${i}
    #cp -r bao_default_model exp_models/${dataset}/varying_value_queries/value_distribution_${i}/
done

testid=4
for i in 1 2 3 4 5 6 7
do
    CUDA_VISIBLE_DEVICES=${cudaid} python3 -u run_queries.py \
	    --train_mode retrain --dataset ${dataset} \
	    --repeat 0 \
	    --alpha 0.5 \
	    --contrastive \
	    --meta \
	    --train_query_file workloads/${dataset}/varying_column_queries_200/queries_${i}_columns/queries_${i}_columns_plans \
	    --train_label_file workloads/${dataset}/varying_column_queries_200/queries_${i}_columns/queries_${i}_columns_time.txt \
	    --save_folder workloads/${dataset}/varying_column_queries_200/queries_${i}_columns \
	    --predict_query_file workloads/${dataset}/varying_column_queries_200/queries_${testid}_columns/queries_${testid}_columns_plans \
	    --predict_label_file workloads/${dataset}/varying_column_queries_200/queries_${testid}_columns/queries_${testid}_columns_time.txt
    #mkdir -p exp_models/${dataset}/varying_column_queries/queries_${i}_columns
    #cp -r bao_default_model exp_models/${dataset}/varying_column_queries/queries_${i}_columns/
done
types=tables
testid=3
for i in 1 2 3 4 5
do
    CUDA_VISIBLE_DEVICES=${cudaid} python3 -u run_queries.py \
	    --train_mode retrain --dataset ${dataset} \
	    --repeat 0  \
	    --alpha 0.5 \
	    --contrastive \
	    --meta \
	    --train_query_file workloads/${dataset}/varying_table_queries_200/queries_${i}_tables/queries_${i}_tables_plans \
	    --train_label_file workloads/${dataset}/varying_table_queries_200/queries_${i}_tables/queries_${i}_tables_time.txt \
	    --save_folder workloads/${dataset}/varying_table_queries_200/queries_${i}_tables \
	    --predict_query_file workloads/${dataset}/varying_table_queries_200/queries_${testid}_tables/queries_${testid}_tables_plans \
	    --predict_label_file workloads/${dataset}/varying_table_queries_200/queries_${testid}_tables/queries_${testid}_tables_time.txt
    #mkdir -p exp_models/${dataset}/varying_table_queries/queries_${i}_tables
    #cp -r bao_default_model exp_models/${dataset}/varying_table_queries/queries_${i}_tables
done

types=label
for i in small large
do
for j in small large	
do
    CUDA_VISIBLE_DEVICES=${cudaid} python3 -u run_queries.py \
	    --train_mode retrain \
	    --dataset ${dataset} \
	    --repeat 0 \
	    --alpha 0.5 \
	    --contrastive \
	    --meta \
	    --train_query_file workloads/${dataset}/varying_label_queries_200/${i}_label_queries/${i}_label_queries_plans \
	    --train_label_file workloads/${dataset}/varying_label_queries_200/${i}_label_queries/${i}_label_queries_time.txt \
	    --save_folder workloads/${dataset}/varying_label_queries_200/${i}_label_queries \
	    --predict_query_file workloads/${dataset}/varying_label_queries_200/${j}_label_queries/${j}_label_queries_plans \
	    --predict_label_file workloads/${dataset}/varying_label_queries_200/${j}_label_queries/${j}_label_queries_time.txt
    #mkdir -p exp_models/${dataset}/varying_label_queries/${i}_label_queries
    #cp -r bao_default_model exp_models/${dataset}/varying_label_queries/${i}_label_queries
done
done


