# Source-only
CUDA_VISIBLE_DEVICES=1 python source_only.py data/office-home -d OfficeHome -s Ar -t Cl -a resnet50 --epochs 5 -i 500 --seed 0 --log logs/src_only/OfficeHome_Ar2Cl
CUDA_VISIBLE_DEVICES=1 python source_only.py data/office-home -d OfficeHome -s Ar -t Rw -a resnet50 --epochs 5 -i 500 --seed 0 --log logs/src_only/OfficeHome_Ar2Rw
CUDA_VISIBLE_DEVICES=1 python source_only.py data/office-home -d OfficeHome -s Cl -t Pr -a resnet50 --epochs 5 -i 500 --seed 0 --log logs/src_only/OfficeHome_Cl2Pr
CUDA_VISIBLE_DEVICES=1 python source_only.py data/office-home -d OfficeHome -s Pr -t Ar -a resnet50 --epochs 5 -i 500 --seed 0 --log logs/src_only/OfficeHome_Pr2Ar
CUDA_VISIBLE_DEVICES=1 python source_only.py data/office-home -d OfficeHome -s Pr -t Rw -a resnet50 --epochs 5 -i 500 --seed 0 --log logs/src_only/OfficeHome_Pr2Rw
CUDA_VISIBLE_DEVICES=1 python source_only.py data/office-home -d OfficeHome -s Rw -t Cl -a resnet50 --epochs 5 -i 500 --seed 0 --log logs/src_only/OfficeHome_Rw2Cl

# MCD
CUDA_VISIBLE_DEVICES=2 python mcd.py data/office-home -d OfficeHome -s Ar -t Cl -a resnet50 --epochs 20 -i 500 --seed 0 --trade-off 30.0 --log logs/mcd/OfficeHome_Ar2Cl
CUDA_VISIBLE_DEVICES=2 python mcd.py data/office-home -d OfficeHome -s Ar -t Rw -a resnet50 --epochs 20 -i 500 --seed 0 --trade-off 30.0 --log logs/mcd/OfficeHome_Ar2Rw
CUDA_VISIBLE_DEVICES=2 python mcd.py data/office-home -d OfficeHome -s Cl -t Pr -a resnet50 --epochs 20 -i 500 --seed 0 --trade-off 30.0 --log logs/mcd/OfficeHome_Cl2Pr
CUDA_VISIBLE_DEVICES=2 python mcd.py data/office-home -d OfficeHome -s Pr -t Ar -a resnet50 --epochs 20 -i 500 --seed 0 --trade-off 30.0 --log logs/mcd/OfficeHome_Pr2Ar
CUDA_VISIBLE_DEVICES=2 python mcd.py data/office-home -d OfficeHome -s Pr -t Rw -a resnet50 --epochs 20 -i 500 --seed 0 --trade-off 30.0 --log logs/mcd/OfficeHome_Pr2Rw
CUDA_VISIBLE_DEVICES=2 python mcd.py data/office-home -d OfficeHome -s Rw -t Cl -a resnet50 --epochs 20 -i 500 --seed 0 --trade-off 30.0 --log logs/mcd/OfficeHome_Rw2Cl

# DANN
CUDA_VISIBLE_DEVICES=1 python dann.py data/office-home -d OfficeHome -s Ar -t Cl -a resnet50 --epochs 30 --seed 0 --log logs/dann/OfficeHome_Ar2Cl
CUDA_VISIBLE_DEVICES=1 python dann.py data/office-home -d OfficeHome -s Ar -t Rw -a resnet50 --epochs 30 --seed 0 --log logs/dann/OfficeHome_Ar2Rw
CUDA_VISIBLE_DEVICES=1 python dann.py data/office-home -d OfficeHome -s Cl -t Pr -a resnet50 --epochs 30 --seed 0 --log logs/dann/OfficeHome_Cl2Pr
CUDA_VISIBLE_DEVICES=1 python dann.py data/office-home -d OfficeHome -s Pr -t Ar -a resnet50 --epochs 30 --seed 0 --log logs/dann/OfficeHome_Pr2Ar
CUDA_VISIBLE_DEVICES=1 python dann.py data/office-home -d OfficeHome -s Pr -t Rw -a resnet50 --epochs 30 --seed 0 --log logs/dann/OfficeHome_Pr2Rw
CUDA_VISIBLE_DEVICES=1 python dann.py data/office-home -d OfficeHome -s Rw -t Cl -a resnet50 --epochs 30 --seed 0 --log logs/dann/OfficeHome_Rw2Cl

# CDAN
CUDA_VISIBLE_DEVICES=0 python cdan.py data/office-home -d OfficeHome -s Ar -t Cl -a resnet50 --epochs 30 --seed 0 --log logs/cdan/OfficeHome_Ar2Cl
CUDA_VISIBLE_DEVICES=0 python cdan.py data/office-home -d OfficeHome -s Ar -t Rw -a resnet50 --epochs 30 --seed 0 --log logs/cdan/OfficeHome_Ar2Rw
CUDA_VISIBLE_DEVICES=0 python cdan.py data/office-home -d OfficeHome -s Cl -t Pr -a resnet50 --epochs 30 --seed 0 --log logs/cdan/OfficeHome_Cl2Pr
CUDA_VISIBLE_DEVICES=0 python cdan.py data/office-home -d OfficeHome -s Pr -t Ar -a resnet50 --epochs 30 --seed 0 --log logs/cdan/OfficeHome_Pr2Ar
CUDA_VISIBLE_DEVICES=0 python cdan.py data/office-home -d OfficeHome -s Pr -t Rw -a resnet50 --epochs 30 --seed 0 --log logs/cdan/OfficeHome_Pr2Rw
CUDA_VISIBLE_DEVICES=0 python cdan.py data/office-home -d OfficeHome -s Rw -t Cl -a resnet50 --epochs 30 --seed 0 --log logs/cdan/OfficeHome_Rw2Cl

# MDD
CUDA_VISIBLE_DEVICES=2 python mdd.py data/office-home -d OfficeHome -s Ar -t Cl -a resnet50 --epochs 30 --bottleneck-dim 2048 --seed 0 --log logs/mdd/OfficeHome_Ar2Cl
CUDA_VISIBLE_DEVICES=2 python mdd.py data/office-home -d OfficeHome -s Ar -t Rw -a resnet50 --epochs 30 --bottleneck-dim 2048 --seed 0 --log logs/mdd/OfficeHome_Ar2Rw
CUDA_VISIBLE_DEVICES=2 python mdd.py data/office-home -d OfficeHome -s Cl -t Pr -a resnet50 --epochs 30 --bottleneck-dim 2048 --seed 0 --log logs/mdd/OfficeHome_Cl2Pr
CUDA_VISIBLE_DEVICES=2 python mdd.py data/office-home -d OfficeHome -s Pr -t Ar -a resnet50 --epochs 30 --bottleneck-dim 2048 --seed 0 --log logs/mdd/OfficeHome_Pr2Ar
CUDA_VISIBLE_DEVICES=2 python mdd.py data/office-home -d OfficeHome -s Pr -t Rw -a resnet50 --epochs 30 --bottleneck-dim 2048 --seed 0 --log logs/mdd/OfficeHome_Pr2Rw
CUDA_VISIBLE_DEVICES=2 python mdd.py data/office-home -d OfficeHome -s Rw -t Cl -a resnet50 --epochs 30 --bottleneck-dim 2048 --seed 0 --log logs/mdd/OfficeHome_Rw2Cl

# AFN
CUDA_VISIBLE_DEVICES=3 python afn.py data/office-home -d OfficeHome -s Ar -t Cl -a resnet50 --epochs 20 --seed 0 --log logs/afn/OfficeHome_Ar2Cl
CUDA_VISIBLE_DEVICES=3 python afn.py data/office-home -d OfficeHome -s Ar -t Rw -a resnet50 --epochs 20 --seed 0 --log logs/afn/OfficeHome_Ar2Rw
CUDA_VISIBLE_DEVICES=3 python afn.py data/office-home -d OfficeHome -s Cl -t Pr -a resnet50 --epochs 20 --seed 0 --log logs/afn/OfficeHome_Cl2Pr
CUDA_VISIBLE_DEVICES=3 python afn.py data/office-home -d OfficeHome -s Pr -t Ar -a resnet50 --epochs 20 --seed 0 --log logs/afn/OfficeHome_Pr2Ar
CUDA_VISIBLE_DEVICES=3 python afn.py data/office-home -d OfficeHome -s Pr -t Rw -a resnet50 --epochs 20 --seed 0 --log logs/afn/OfficeHome_Pr2Rw
CUDA_VISIBLE_DEVICES=3 python afn.py data/office-home -d OfficeHome -s Rw -t Cl -a resnet50 --epochs 20 --seed 0 --log logs/afn/OfficeHome_Rw2Cl

# MCC
CUDA_VISIBLE_DEVICES=3 python mcc.py data/office-home -d OfficeHome -s Ar -t Cl -a resnet50 --epochs 30 --seed 0 --temperature 2.5 --bottleneck-dim 2048 --log logs/mcc/OfficeHome_Ar2Cl
CUDA_VISIBLE_DEVICES=3 python mcc.py data/office-home -d OfficeHome -s Ar -t Rw -a resnet50 --epochs 30 --seed 0 --temperature 2.5 --bottleneck-dim 2048 --log logs/mcc/OfficeHome_Ar2Rw
CUDA_VISIBLE_DEVICES=3 python mcc.py data/office-home -d OfficeHome -s Cl -t Pr -a resnet50 --epochs 30 --seed 0 --temperature 2.5 --bottleneck-dim 2048 --log logs/mcc/OfficeHome_Cl2Pr
CUDA_VISIBLE_DEVICES=3 python mcc.py data/office-home -d OfficeHome -s Pr -t Ar -a resnet50 --epochs 30 --seed 0 --temperature 2.5 --bottleneck-dim 2048 --log logs/mcc/OfficeHome_Pr2Ar
CUDA_VISIBLE_DEVICES=3 python mcc.py data/office-home -d OfficeHome -s Pr -t Rw -a resnet50 --epochs 30 --seed 0 --temperature 2.5 --bottleneck-dim 2048 --log logs/mcc/OfficeHome_Pr2Rw
CUDA_VISIBLE_DEVICES=3 python mcc.py data/office-home -d OfficeHome -s Rw -t Cl -a resnet50 --epochs 30 --seed 0 --temperature 2.5 --bottleneck-dim 2048 --log logs/mcc/OfficeHome_Rw2Cl

# Self-ensemble
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office-home -d OfficeHome -s Ar -t Cl -a resnet50 --seed 0 --log logs/self_ensemble/OfficeHome_Ar2Cl
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office-home -d OfficeHome -s Ar -t Rw -a resnet50 --seed 0 --log logs/self_ensemble/OfficeHome_Ar2Rw
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office-home -d OfficeHome -s Cl -t Pr -a resnet50 --seed 0 --log logs/self_ensemble/OfficeHome_Cl2Pr
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office-home -d OfficeHome -s Pr -t Ar -a resnet50 --seed 0 --log logs/self_ensemble/OfficeHome_Pr2Ar
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office-home -d OfficeHome -s Pr -t Rw -a resnet50 --seed 0 --log logs/self_ensemble/OfficeHome_Pr2Rw
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office-home -d OfficeHome -s Rw -t Cl -a resnet50 --seed 0 --log logs/self_ensemble/OfficeHome_Rw2Cl

# MDD+Consistency
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/office-home --thr 0.95 -d OfficeHome -s Ar -t Cl -a resnet50 --epochs 30 --bottleneck-dim 2048 --seed 0 --log logs/mdd_consistency/OfficeHome_Ar2Cl
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/office-home --thr 0.95 -d OfficeHome -s Ar -t Rw -a resnet50 --epochs 30 --bottleneck-dim 2048 --seed 0 --log logs/mdd_consistency/OfficeHome_Ar2Rw
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/office-home --thr 0.95 -d OfficeHome -s Cl -t Pr -a resnet50 --epochs 30 --bottleneck-dim 2048 --seed 0 --log logs/mdd_consistency/OfficeHome_Cl2Pr
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/office-home --thr 0.95 -d OfficeHome -s Pr -t Ar -a resnet50 --epochs 30 --bottleneck-dim 2048 --seed 0 --log logs/mdd_consistency/OfficeHome_Pr2Ar
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/office-home --thr 0.95 -d OfficeHome -s Pr -t Rw -a resnet50 --epochs 30 --bottleneck-dim 2048 --seed 0 --log logs/mdd_consistency/OfficeHome_Pr2Rw
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/office-home --thr 0.95 -d OfficeHome -s Rw -t Cl -a resnet50 --epochs 30 --bottleneck-dim 2048 --seed 0 --log logs/mdd_consistency/OfficeHome_Rw2Cl

# MCC+Consistency
CUDA_VISIBLE_DEVICES=0 python mcc_consistency.py data/office-home -d OfficeHome -s Ar -t Cl -a resnet50 --epochs 30 --seed 0  --thr 0.95 --temperature 2.5 --bottleneck-dim 2048 --log logs/mcc_consistency/OfficeHome_Ar2Cl
CUDA_VISIBLE_DEVICES=0 python mcc_consistency.py data/office-home -d OfficeHome -s Ar -t Rw -a resnet50 --epochs 30 --seed 0  --thr 0.95 --temperature 2.5 --bottleneck-dim 2048 --log logs/mcc_consistency/OfficeHome_Ar2Rw
CUDA_VISIBLE_DEVICES=0 python mcc_consistency.py data/office-home -d OfficeHome -s Cl -t Pr -a resnet50 --epochs 30 --seed 0  --thr 0.95 --temperature 2.5 --bottleneck-dim 2048 --log logs/mcc_consistency/OfficeHome_Cl2Pr
CUDA_VISIBLE_DEVICES=0 python mcc_consistency.py data/office-home -d OfficeHome -s Pr -t Ar -a resnet50 --epochs 30 --seed 0  --thr 0.95 --temperature 2.5 --bottleneck-dim 2048 --log logs/mcc_consistency/OfficeHome_Pr2Ar
CUDA_VISIBLE_DEVICES=0 python mcc_consistency.py data/office-home -d OfficeHome -s Pr -t Rw -a resnet50 --epochs 30 --seed 0  --thr 0.95 --temperature 2.5 --bottleneck-dim 2048 --log logs/mcc_consistency/OfficeHome_Pr2Rw
CUDA_VISIBLE_DEVICES=0 python mcc_consistency.py data/office-home -d OfficeHome -s Rw -t Cl -a resnet50 --epochs 30 --seed 0  --thr 0.95 --temperature 2.5 --bottleneck-dim 2048 --log logs/mcc_consistency/OfficeHome_Rw2Cl
