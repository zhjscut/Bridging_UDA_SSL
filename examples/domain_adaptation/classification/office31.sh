# Source-Only
CUDA_VISIBLE_DEVICES=0 python source_only.py data/office31 -d Office31 -s A -t W -a resnet50 --epochs 5 --seed 0 --log logs/src_only/Office31_A2W
CUDA_VISIBLE_DEVICES=0 python source_only.py data/office31 -d Office31 -s D -t W -a resnet50 --epochs 5 --seed 0 --log logs/src_only/Office31_D2W
CUDA_VISIBLE_DEVICES=0 python source_only.py data/office31 -d Office31 -s W -t D -a resnet50 --epochs 5 --seed 0 --log logs/src_only/Office31_W2D
CUDA_VISIBLE_DEVICES=0 python source_only.py data/office31 -d Office31 -s A -t D -a resnet50 --epochs 5 --seed 0 --log logs/src_only/Office31_A2D
CUDA_VISIBLE_DEVICES=0 python source_only.py data/office31 -d Office31 -s D -t A -a resnet50 --epochs 5 --seed 0 --log logs/src_only/Office31_D2A
CUDA_VISIBLE_DEVICES=0 python source_only.py data/office31 -d Office31 -s W -t A -a resnet50 --epochs 5 --seed 0 --log logs/src_only/Office31_W2A

# MCD
CUDA_VISIBLE_DEVICES=0 python mcd.py data/office31 -d Office31 -s D -t A -a resnet50 --epochs 20 --seed 0 -i 500 --trade-off 10.0 --log logs/mcd/Office31_D2A
CUDA_VISIBLE_DEVICES=0 python mcd.py data/office31 -d Office31 -s W -t A -a resnet50 --epochs 20 --seed 0 -i 500 --trade-off 10.0 --log logs/mcd/Office31_W2A
CUDA_VISIBLE_DEVICES=0 python mcd.py data/office31 -d Office31 -s A -t W -a resnet50 --epochs 20 --seed 0 -i 500 --trade-off 10.0 --log logs/mcd/Office31_A2W
CUDA_VISIBLE_DEVICES=0 python mcd.py data/office31 -d Office31 -s A -t D -a resnet50 --epochs 20 --seed 0 -i 500 --trade-off 10.0 --log logs/mcd/Office31_A2D
CUDA_VISIBLE_DEVICES=0 python mcd.py data/office31 -d Office31 -s D -t W -a resnet50 --epochs 20 --seed 0 -i 500 --trade-off 10.0 --log logs/mcd/Office31_D2W
CUDA_VISIBLE_DEVICES=0 python mcd.py data/office31 -d Office31 -s W -t D -a resnet50 --epochs 20 --seed 0 -i 500 --trade-off 10.0 --log logs/mcd/Office31_W2D

# DANN
CUDA_VISIBLE_DEVICES=0 python dann.py data/office31 -d Office31 -s A -t W -a resnet50 --epochs 20 --seed 0 --log logs/dann/Office31_A2W
CUDA_VISIBLE_DEVICES=0 python dann.py data/office31 -d Office31 -s D -t W -a resnet50 --epochs 20 --seed 0 --log logs/dann/Office31_D2W
CUDA_VISIBLE_DEVICES=0 python dann.py data/office31 -d Office31 -s W -t D -a resnet50 --epochs 20 --seed 0 --log logs/dann/Office31_W2D
CUDA_VISIBLE_DEVICES=0 python dann.py data/office31 -d Office31 -s A -t D -a resnet50 --epochs 20 --seed 0 --log logs/dann/Office31_A2D
CUDA_VISIBLE_DEVICES=0 python dann.py data/office31 -d Office31 -s D -t A -a resnet50 --epochs 20 --seed 0 --log logs/dann/Office31_D2A
CUDA_VISIBLE_DEVICES=0 python dann.py data/office31 -d Office31 -s W -t A -a resnet50 --epochs 20 --seed 0 --log logs/dann/Office31_W2A

# CDAN
CUDA_VISIBLE_DEVICES=0 python cdan.py data/office31 -d Office31 -s A -t W -a resnet50 --epochs 20 --seed 0 --log logs/cdan/Office31_A2W
CUDA_VISIBLE_DEVICES=0 python cdan.py data/office31 -d Office31 -s D -t W -a resnet50 --epochs 20 --seed 0 --log logs/cdan/Office31_D2W
CUDA_VISIBLE_DEVICES=0 python cdan.py data/office31 -d Office31 -s W -t D -a resnet50 --epochs 20 --seed 0 --log logs/cdan/Office31_W2D
CUDA_VISIBLE_DEVICES=0 python cdan.py data/office31 -d Office31 -s A -t D -a resnet50 --epochs 20 --seed 0 --log logs/cdan/Office31_A2D
CUDA_VISIBLE_DEVICES=0 python cdan.py data/office31 -d Office31 -s D -t A -a resnet50 --epochs 20 --seed 0 --log logs/cdan/Office31_D2A
CUDA_VISIBLE_DEVICES=0 python cdan.py data/office31 -d Office31 -s W -t A -a resnet50 --epochs 20 --seed 0 --log logs/cdan/Office31_W2A

# MDD
CUDA_VISIBLE_DEVICES=0 python mdd.py data/office31 -d Office31 -s A -t W -a resnet50 --epochs 20 --bottleneck-dim 1024 --seed 0 --log logs/mdd/Office31_A2W
CUDA_VISIBLE_DEVICES=0 python mdd.py data/office31 -d Office31 -s D -t W -a resnet50 --epochs 20 --bottleneck-dim 1024 --seed 0 --log logs/mdd/Office31_D2W
CUDA_VISIBLE_DEVICES=0 python mdd.py data/office31 -d Office31 -s W -t D -a resnet50 --epochs 20 --bottleneck-dim 1024 --seed 0 --log logs/mdd/Office31_W2D
CUDA_VISIBLE_DEVICES=0 python mdd.py data/office31 -d Office31 -s A -t D -a resnet50 --epochs 20 --bottleneck-dim 1024 --seed 0 --log logs/mdd/Office31_A2D
CUDA_VISIBLE_DEVICES=0 python mdd.py data/office31 -d Office31 -s D -t A -a resnet50 --epochs 20 --bottleneck-dim 1024 --seed 0 --log logs/mdd/Office31_D2A
CUDA_VISIBLE_DEVICES=0 python mdd.py data/office31 -d Office31 -s W -t A -a resnet50 --epochs 20 --bottleneck-dim 1024 --seed 0 --log logs/mdd/Office31_W2A

# AFN
CUDA_VISIBLE_DEVICES=0 python afn.py data/office31 -d Office31 -s A -t W -a resnet50 --trade-off-entropy 0.1 --epochs 20 --seed 0 --log logs/afn/Office31_A2W
CUDA_VISIBLE_DEVICES=0 python afn.py data/office31 -d Office31 -s D -t W -a resnet50 --trade-off-entropy 0.1 --epochs 20 --seed 0 --log logs/afn/Office31_D2W
CUDA_VISIBLE_DEVICES=0 python afn.py data/office31 -d Office31 -s W -t D -a resnet50 --trade-off-entropy 0.1 --epochs 20 --seed 0 --log logs/afn/Office31_W2D
CUDA_VISIBLE_DEVICES=0 python afn.py data/office31 -d Office31 -s A -t D -a resnet50 --trade-off-entropy 0.1 --epochs 20 --seed 0 --log logs/afn/Office31_A2D
CUDA_VISIBLE_DEVICES=0 python afn.py data/office31 -d Office31 -s D -t A -a resnet50 --trade-off-entropy 0.1 --epochs 20 --seed 0 --log logs/afn/Office31_D2A
CUDA_VISIBLE_DEVICES=0 python afn.py data/office31 -d Office31 -s W -t A -a resnet50 --trade-off-entropy 0.1 --epochs 20 --seed 0 --log logs/afn/Office31_W2A

# MCC
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office31 -d Office31 -s A -t W -a resnet50 --epochs 20 -i 500 --seed 0 --temperature 2.5 --bottleneck-dim 1024 --log logs/mcc/Office31_A2W
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office31 -d Office31 -s D -t W -a resnet50 --epochs 20 -i 500 --seed 0 --temperature 2.5 --bottleneck-dim 1024 --log logs/mcc/Office31_D2W
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office31 -d Office31 -s W -t D -a resnet50 --epochs 20 -i 500 --seed 0 --temperature 2.5 --bottleneck-dim 1024 --log logs/mcc/Office31_W2D
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office31 -d Office31 -s A -t D -a resnet50 --epochs 20 -i 500 --seed 0 --temperature 2.5 --bottleneck-dim 1024 --log logs/mcc/Office31_A2D
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office31 -d Office31 -s D -t A -a resnet50 --epochs 20 -i 500 --seed 0 --temperature 2.5 --bottleneck-dim 1024 --log logs/mcc/Office31_D2A
CUDA_VISIBLE_DEVICES=0 python mcc.py data/office31 -d Office31 -s W -t A -a resnet50 --epochs 20 -i 500 --seed 0 --temperature 2.5 --bottleneck-dim 1024 --log logs/mcc/Office31_W2A

# Self-Ensemble
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office31 -d Office31 -s A -t W -a resnet50 --seed 0 --log logs/self_ensemble/Office31_A2W
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office31 -d Office31 -s D -t W -a resnet50 --seed 0 --log logs/self_ensemble/Office31_D2W
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office31 -d Office31 -s W -t D -a resnet50 --seed 0 --log logs/self_ensemble/Office31_W2D
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office31 -d Office31 -s A -t D -a resnet50 --seed 0 --log logs/self_ensemble/Office31_A2D
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office31 -d Office31 -s D -t A -a resnet50 --seed 0 --log logs/self_ensemble/Office31_D2A
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office31 -d Office31 -s W -t A -a resnet50 --seed 0 --log logs/self_ensemble/Office31_W2A

# MDD+Consistency
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/office31 --thr 0.99 --trade_off_consistency 0.1 -d Office31 -s A -t W -a resnet50 --epochs 20 --bottleneck-dim 1024 --seed 1 --log logs/mdd_consistency/Office31_A2W
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/office31 --thr 0.99 --trade_off_consistency 0.1 -d Office31 -s D -t W -a resnet50 --epochs 20 --bottleneck-dim 1024 --seed 1 --log logs/mdd_consistency/Office31_D2W
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/office31 --thr 0.99 --trade_off_consistency 0.1 -d Office31 -s W -t D -a resnet50 --epochs 20 --bottleneck-dim 1024 --seed 1 --log logs/mdd_consistency/Office31_W2D
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/office31 --thr 0.99 --trade_off_consistency 0.1 -d Office31 -s A -t D -a resnet50 --epochs 20 --bottleneck-dim 1024 --seed 1 --log logs/mdd_consistency/Office31_A2D
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/office31 --thr 0.99 --trade_off_consistency 0.1 -d Office31 -s D -t A -a resnet50 --epochs 20 --bottleneck-dim 1024 --seed 1 --log logs/mdd_consistency/Office31_D2A
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/office31 --thr 0.99 --trade_off_consistency 0.1 -d Office31 -s W -t A -a resnet50 --epochs 20 --bottleneck-dim 1024 --seed 1 --log logs/mdd_consistency/Office31_W2A

# MCC+Consistency
CUDA_VISIBLE_DEVICES=0 python mcc_consistency.py data/office31 -d Office31 -s A -t W -a resnet50 --epochs 20 -i 500 --seed 0 --thr 0.95 --temperature 2.5 --bottleneck-dim 1024 --log logs/mcc_consistency/Office31_A2W
CUDA_VISIBLE_DEVICES=0 python mcc_consistency.py data/office31 -d Office31 -s D -t W -a resnet50 --epochs 20 -i 500 --seed 0 --thr 0.95 --temperature 2.5 --bottleneck-dim 1024 --log logs/mcc_consistency/Office31_D2W
CUDA_VISIBLE_DEVICES=0 python mcc_consistency.py data/office31 -d Office31 -s W -t D -a resnet50 --epochs 20 -i 500 --seed 0 --thr 0.95 --temperature 2.5 --bottleneck-dim 1024 --log logs/mcc_consistency/Office31_W2D
CUDA_VISIBLE_DEVICES=0 python mcc_consistency.py data/office31 -d Office31 -s A -t D -a resnet50 --epochs 20 -i 500 --seed 0 --thr 0.95 --temperature 2.5 --bottleneck-dim 1024 --log logs/mcc_consistency/Office31_A2D
CUDA_VISIBLE_DEVICES=0 python mcc_consistency.py data/office31 -d Office31 -s D -t A -a resnet50 --epochs 20 -i 500 --seed 0 --thr 0.95 --temperature 2.5 --bottleneck-dim 1024 --log logs/mcc_consistency/Office31_D2A
CUDA_VISIBLE_DEVICES=0 python mcc_consistency.py data/office31 -d Office31 -s W -t A -a resnet50 --epochs 20 -i 500 --seed 0 --thr 0.95 --temperature 2.5 --bottleneck-dim 1024 --log logs/mcc_consistency/Office31_W2A
