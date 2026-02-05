dataset=dsb
cudaid=3
testid=7_2
CUDA_VISIBLE_DEVICES=${cudaid} python3 -u run_queries.py \
	    --train_mode retrain \
	    --dataset ${dataset} \
	    --repeat 0 \
	    --alpha 0.5 \
	    --contrastive \
	    --meta \
	    --train_query_file workloads/${dataset}/query101_spj_plans \
	    --train_label_file workloads/${dataset}/query101_spj_time.txt \
	    --save_folder workloads/${dataset} \
	    --predict_query_file workloads/${dataset}/query100_spj_plans \
	    --predict_label_file workloads/${dataset}/query100_spj_time.txt
#mkdir -p exp_models/${dataset}/varying_label_queries/${i}_label_queries
#cp -r bao_default_model exp_models/${dataset}/varying_label_queries/${i}_label_queries


