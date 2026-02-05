# Workload-Drift-Benchmark
A benchmark for evaluating the performance of workload-driven database components under workload drift.

## Datasets and Workloads
Download the [datasets](https://drive.google.com/drive/folders/1WWXcg2-nDJiaa3vxSJtwwOBzGYcorUnz?usp=sharing) and import them into PostgreSQL. You can use the scripts in [`scripts/load_data.py`](scripts/load_data.py) to create databases, import data form file, and create indexes.

The workloads `job-light-drift` and `stats-drift` used in the experiments are in [`workloads`](workloads), which contains all workloads with **Join drift**, **Column drift**, **Value drift** and **Output drift**. The SQL files could be used in cost estimation and query optimization evaluation. The csv files, which contains true cardinality of each query, could be used in cardinality estimation.

### Workload generation
If you want to generate your own workload with drift, you can use the scripts in [`scripts/workload_generation`](scripts/workload_generation). [`generate_all_queries.py`](scripts/workload_generation/generate_all_queries.py) are used to generate queries for **Join drift**, **Column drift** and **Output drift**. After query generation done, you can split the queries based on join number, column number of output size. [`generate_multitable_beta_value_distribution.py`](scripts/workload_generation/generate_multitable_beta_value_distribution.py) is used to generate workload with **Value drift**, where you can modify the parameters of Beta distrition.

## Evaluation Results
All evaluation results are in [`results`](results)

## Cardinality estimation
**MSCN**: [paper](https://www.cidrdb.org/cidr2019/papers/p101-kipf-cidr19.pdf), [code](https://github.com/andreaskipf/learnedcardinalities).

**Robust-MSCN**: [paper](https://www.vldb.org/pvldb/vol16/p1520-negi.pdf), [code](https://github.com/learnedsystems/CEB).

To evualte MSCN and Robust-MSCN easily, we modify them and put it [`here`](baselines/MSCN-modified). You can run [`run_joblight.sh`] to evaluate JOB-light-drift, and run [`run_stats.sh`] to evaluate STATS-drift

**ALECE**: [paper](https://www.vldb.org/pvldb/vol17/p197-li.pdf), [code](https://github.com/pfl-cs/ALECE).

To evulate their impact on query optimization, we use **CardEst** ([paper](https://www.vldb.org/pvldb/vol15/p752-zhu.pdf), [code](https://github.com/Nathaniel-Han/End-to-End-CardEst-Benchmark/tree/master)), which could replace the estimated cardinality of PostgreSQL with outer estimated cardinality. Thanks the authors provide the evaluation platform.

## Cost estimation
**End-to-End**: [paper](https://dl.acm.org/doi/abs/10.14778/3368289.3368296), [code](https://github.com/greatji/Learning-based-cost-estimator).

**QPPNet**: [paper](https://dl.acm.org/doi/abs/10.14778/3342263.3342646), [code](https://github.com/rabbit721/QPPNet).

**QueryFormer**: [paper](https://www.vldb.org/pvldb/vol15/p1658-zhao.pdf), [code](https://github.com/zhaoyue-ntu/QueryFormer).

We use the implementation of **LCM** ([paper](https://dl.acm.org/doi/10.1145/3725309), [code](https://github.com/DataManagementLab/lcm-eval/tree/main)). Thanks the authors provide a unified platform for convient cost estimation evaluation.

To evaluate the impact on query optimization, we use a modified Bao at [here](baselines/Bao-modified), which could provide hints to PostgreSQL. You can run [`end_to_end.sh`] for evaluation. The workloads for evaluation could be downloaded from [here](https://drive.google.com/file/d/1q4dPOjZ3gygLoKqlY7NXGvyde25GdZ86/view?usp=sharing).

## Query optimizatiom
**Bao**: [paper](https://dl.acm.org/doi/10.1145/3448016.3452838), [code](https://github.com/learnedsystems/BaoForPostgreSQL/tree/master).

**Balsa**: [paper](https://zongheng.me/pubs/balsa-sigmod2022.pdf), [code](https://github.com/balsa-project/balsa/blob/main/balsa/optimizer.py).

**Lero**: [paper](https://www.vldb.org/pvldb/vol16/p1466-zhu.pdf), [code](https://github.com/AlibabaIncubator/Lero-on-PostgreSQL/tree/main).

