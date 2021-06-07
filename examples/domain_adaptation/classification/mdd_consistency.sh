#!/usr/bin/env bash

## Office31
CUDA_VISIBLE_DEVICES=1 python mdd_consistency.py data/office31 --thr 0.99 --trade_off_consistency 0.1 -d Office31 -s A -t W -a resnet50 --epochs 20 --bottleneck-dim 1024 --seed 1 --log logs/mdd_consistency/Office31_A2W
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/office31 --thr 0.99 --trade_off_consistency 0.1 -d Office31 -s D -t W -a resnet50 --epochs 20 --bottleneck-dim 1024 --seed 1 --log logs/mdd_consistency/Office31_D2W
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/office31 --thr 0.99 --trade_off_consistency 0.1 -d Office31 -s W -t D -a resnet50 --epochs 20 --bottleneck-dim 1024 --seed 1 --log logs/mdd_consistency/Office31_W2D
CUDA_VISIBLE_DEVICES=1 python mdd_consistency.py data/office31 --thr 0.99 --trade_off_consistency 0.1 -d Office31 -s A -t D -a resnet50 --epochs 20 --bottleneck-dim 1024 --seed 1 --log logs/mdd_consistency/Office31_A2D
CUDA_VISIBLE_DEVICES=1 python mdd_consistency.py data/office31 --thr 0.99 --trade_off_consistency 0.1 -d Office31 -s D -t A -a resnet50 --epochs 20 --bottleneck-dim 1024 --seed 1 --log logs/mdd_consistency/Office31_D2A
CUDA_VISIBLE_DEVICES=1 python mdd_consistency.py data/office31 --thr 0.99 --trade_off_consistency 0.1 -d Office31 -s W -t A -a resnet50 --epochs 20 --bottleneck-dim 1024 --seed 1 --log logs/mdd_consistency/Office31_W2A


## Office-Home
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/office-home --thr 0.95 -d OfficeHome -s Ar -t Cl -a resnet50 --epochs 30 --bottleneck-dim 2048 --seed 0 --log logs/mdd_consistency/OfficeHome_Ar2Cl
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/office-home --thr 0.95 -d OfficeHome -s Ar -t Rw -a resnet50 --epochs 30 --bottleneck-dim 2048 --seed 0 --log logs/mdd_consistency/OfficeHome_Ar2Rw
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/office-home --thr 0.95 -d OfficeHome -s Cl -t Pr -a resnet50 --epochs 30 --bottleneck-dim 2048 --seed 0 --log logs/mdd_consistency/OfficeHome_Cl2Pr
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/office-home --thr 0.95 -d OfficeHome -s Pr -t Ar -a resnet50 --epochs 30 --bottleneck-dim 2048 --seed 0 --log logs/mdd_consistency/OfficeHome_Pr2Ar
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/office-home --thr 0.95 -d OfficeHome -s Pr -t Rw -a resnet50 --epochs 30 --bottleneck-dim 2048 --seed 0 --log logs/mdd_consistency/OfficeHome_Pr2Rw
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/office-home --thr 0.95 -d OfficeHome -s Rw -t Cl -a resnet50 --epochs 30 --bottleneck-dim 2048 --seed 0 --log logs/mdd_consistency/OfficeHome_Rw2Cl

## VisDA-2017
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/visda-2017 -d VisDA2017 -s Synthetic -t Real -a resnet101 --epochs 30 \
    --bottleneck-dim 1024 --thr 0.99 --seed 0 --center-crop --per-class-eval -b 36 --log logs/mdd_consistency/VisDA2017


## DomainNet
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/domainnet --thr 0.7 -d DomainNet -s c -t i -a resnet50 --epochs 40 -i 5000 -p 500 --bottleneck-dim 2048 --seed 1 --lr 0.004 --log logs/mdd_consistency/DomainNet_c2i
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/domainnet --thr 0.7 -d DomainNet -s i -t p -a resnet50 --epochs 40 -i 5000 -p 500 --bottleneck-dim 2048 --seed 1 --lr 0.004 --log logs/mdd_consistency/DomainNet_i2p
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/domainnet --thr 0.7 -d DomainNet -s p -t q -a resnet50 --epochs 40 -i 5000 -p 500 --bottleneck-dim 2048 --seed 1 --lr 0.004 --log logs/mdd_consistency/DomainNet_p2q
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/domainnet --thr 0.7 -d DomainNet -s q -t r -a resnet50 --epochs 40 -i 5000 -p 500 --bottleneck-dim 2048 --seed 1 --lr 0.004 --log logs/mdd_consistency/DomainNet_q2r
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/domainnet --thr 0.7 -d DomainNet -s r -t s -a resnet50 --epochs 40 -i 5000 -p 500 --bottleneck-dim 2048 --seed 1 --lr 0.004 --log logs/mdd_consistency/DomainNet_r2s
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/domainnet --thr 0.7 -d DomainNet -s s -t c -a resnet50 --epochs 40 -i 5000 -p 500 --bottleneck-dim 2048 --seed 1 --lr 0.004 --log logs/mdd_consistency/DomainNet_s2c
