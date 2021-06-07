#!/usr/bin/env bash
# Office31
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office31 -d Office31 -s A -t W -a resnet50 --seed 1 --log logs/self_ensemble/Office31_A2W
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office31 -d Office31 -s D -t W -a resnet50 --seed 1 --log logs/self_ensemble/Office31_D2W
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office31 -d Office31 -s W -t D -a resnet50 --seed 1 --log logs/self_ensemble/Office31_W2D
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office31 -d Office31 -s A -t D -a resnet50 --seed 1 --log logs/self_ensemble/Office31_A2D
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office31 -d Office31 -s D -t A -a resnet50 --seed 1 --log logs/self_ensemble/Office31_D2A
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office31 -d Office31 -s W -t A -a resnet50 --seed 1 --log logs/self_ensemble/Office31_W2A

# Office-Home
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office-home -d OfficeHome -s Ar -t Cl -a resnet50 --seed 0 --log logs/self_ensemble/OfficeHome_Ar2Cl
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office-home -d OfficeHome -s Ar -t Pr -a resnet50 --seed 0 --log logs/self_ensemble/OfficeHome_Ar2Pr
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office-home -d OfficeHome -s Ar -t Rw -a resnet50 --seed 0 --log logs/self_ensemble/OfficeHome_Ar2Rw
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office-home -d OfficeHome -s Cl -t Ar -a resnet50 --seed 0 --log logs/self_ensemble/OfficeHome_Cl2Ar
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office-home -d OfficeHome -s Cl -t Pr -a resnet50 --seed 0 --log logs/self_ensemble/OfficeHome_Cl2Pr
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office-home -d OfficeHome -s Cl -t Rw -a resnet50 --seed 0 --log logs/self_ensemble/OfficeHome_Cl2Rw
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office-home -d OfficeHome -s Pr -t Ar -a resnet50 --seed 0 --log logs/self_ensemble/OfficeHome_Pr2Ar
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office-home -d OfficeHome -s Pr -t Cl -a resnet50 --seed 0 --log logs/self_ensemble/OfficeHome_Pr2Cl
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office-home -d OfficeHome -s Pr -t Rw -a resnet50 --seed 0 --log logs/self_ensemble/OfficeHome_Pr2Rw
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office-home -d OfficeHome -s Rw -t Ar -a resnet50 --seed 0 --log logs/self_ensemble/OfficeHome_Rw2Ar
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office-home -d OfficeHome -s Rw -t Cl -a resnet50 --seed 0 --log logs/self_ensemble/OfficeHome_Rw2Cl
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/office-home -d OfficeHome -s Rw -t Pr -a resnet50 --seed 0 --log logs/self_ensemble/OfficeHome_Rw2Pr

# VisDA-2017
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/visda-2017 -d VisDA2017 -s Synthetic -t Real -a resnet101 \
    --bottleneck-dim 512 --epochs 20 --seed 0 --per-class-eval --log logs/self_ensemble/VisDA2017

CUDA_VISIBLE_DEVICES=6 python self_ensemble.py data/visda-2017 -d VisDA2017 -s Synthetic -t Real -a resnet101 \
    --epochs 20 --seed 0 --per-class-eval --log logs/self_ensemble/VisDA2017 --lr-gamma 0.0002 -b 32

# DomainNet (by ourself)
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/domainnet -d DomainNet -s c -t i -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/self_ensemble/DomainNet_c2i
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/domainnet -d DomainNet -s i -t p -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/self_ensemble/DomainNet_i2p
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/domainnet -d DomainNet -s p -t q -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/self_ensemble/DomainNet_p2q
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/domainnet -d DomainNet -s q -t r -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/self_ensemble/DomainNet_q2r
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/domainnet -d DomainNet -s r -t s -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/self_ensemble/DomainNet_r2s
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/domainnet -d DomainNet -s s -t c -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/self_ensemble/DomainNet_s2c