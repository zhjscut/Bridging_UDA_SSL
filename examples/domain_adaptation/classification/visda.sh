# Source-Only
CUDA_VISIBLE_DEVICES=0 python source_only.py data/visda-2017 -d VisDA2017 -s Synthetic -t Real -a resnet101 \
    --epochs 20 -i 1000 --seed 0 --per-class-eval --center-crop --log logs/src_only/VisDA2017

# MCD
CUDA_VISIBLE_DEVICES=0 python mcd.py data/visda-2017 -d VisDA2017 -s Synthetic -t Real -a resnet101 \
    --epochs 20 --center-crop --seed 0 -i 500 --per-class-eval --log logs/mcd/VisDA2017

# DANN
CUDA_VISIBLE_DEVICES=0 python dann.py data/visda-2017 -d VisDA2017 -s Synthetic -t Real -a resnet101 \
    --epochs 30 --seed 0 --per-class-eval --center-crop --log logs/dann/VisDA2017

# CDAN
CUDA_VISIBLE_DEVICES=0 python cdan.py data/visda-2017 -d VisDA2017 -s Synthetic -t Real -a resnet101 \
    --epochs 30 --seed 0 --per-class-eval --center-crop --log logs/cdan/VisDA2017

# MDD
CUDA_VISIBLE_DEVICES=0 python mdd.py data/visda-2017 -d VisDA2017 -s Synthetic -t Real -a resnet101 --epochs 30 \
    --bottleneck-dim 1024 --seed 0 --center-crop --per-class-eval -b 36 --log logs/mdd/VisDA2017

# AFN
CUDA_VISIBLE_DEVICES=0 python afn.py data/visda-2017 -d VisDA2017 -s Synthetic -t Real -a resnet101 -r 0.3 -b 36 \
    --epochs 10 -i 1000 --seed 0 --per-class-eval --center-crop --log logs/afn/VisDA2017

# MCC
CUDA_VISIBLE_DEVICES=0 python mcc.py data/visda-2017 -d VisDA2017 -s Synthetic -t Real -a resnet101 \
    --epochs 30 --seed 0 --lr 0.002 --per-class-eval --temperature 3.0 --center-crop --log logs/mcc/VisDA2017

# Oracle
CUDA_VISIBLE_DEVICES=0 python source_only.py data/visda-2017 -d VisDA2017 -s Real -t Real -a resnet101 \
    --epochs 20 -i 1000 --seed 0 --lr 0.01 --per-class-eval --center-crop --log logs/src_only/VisDA2017

# Self-ensemble
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/visda-2017 -d VisDA2017 -s Synthetic -t Real -a resnet101 \
    --epochs 20 --seed 0 --per-class-eval --log logs/self_ensemble/VisDA2017 --lr-gamma 0.0002 -b 32

# MDD+Consistency
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/visda-2017 -d VisDA2017 -s Synthetic -t Real -a resnet101 --epochs 30 \
    --bottleneck-dim 1024 --thr 0.99 --seed 0 --center-crop --per-class-eval -b 36 --log logs/mdd_consistency/VisDA2017

# MCC+Consistency
CUDA_VISIBLE_DEVICES=0 python mcc_consistency.py data/visda-2017 -d VisDA2017 -s Synthetic -t Real -a resnet101 \
    --epochs 30 --thr 0.95  --seed 0 --lr 0.002 --per-class-eval --temperature 3.0 --center-crop --log logs/mcc_consistency/VisDA2017
