#!/usr/bin/env bash
# Office31
CUDA_VISIBLE_DEVICES=0 python examples-da/partial/mdd.py data/office31 -d Office31 -s A -t W -a resnet50  --epochs 20 --seed 0 > benchmarks/da/partial/mdd/Office31_A2W.txt
CUDA_VISIBLE_DEVICES=0 python examples-da/partial/mdd.py data/office31 -d Office31 -s D -t W -a resnet50  --epochs 20 --seed 0 > benchmarks/da/partial/mdd/Office31_D2W.txt
CUDA_VISIBLE_DEVICES=0 python examples-da/partial/mdd.py data/office31 -d Office31 -s W -t D -a resnet50  --epochs 20 --seed 0 > benchmarks/da/partial/mdd/Office31_W2D.txt
CUDA_VISIBLE_DEVICES=0 python examples-da/partial/mdd.py data/office31 -d Office31 -s A -t D -a resnet50  --epochs 20 --seed 0 > benchmarks/da/partial/mdd/Office31_A2D.txt
CUDA_VISIBLE_DEVICES=0 python examples-da/partial/mdd.py data/office31 -d Office31 -s D -t A -a resnet50  --epochs 20 --seed 0 > benchmarks/da/partial/mdd/Office31_D2A.txt
CUDA_VISIBLE_DEVICES=0 python examples-da/partial/mdd.py data/office31 -d Office31 -s W -t A -a resnet50  --epochs 20 --seed 0 > benchmarks/da/partial/mdd/Office31_W2A.txt

# Office-Home
CUDA_VISIBLE_DEVICES=0 python examples-da/partial/mdd.py data/office-home -d OfficeHome -s Ar -t Cl -a resnet50 --epochs 30 --temperature 0.01 --seed 0 > benchmarks/da/partial/mdd/OfficeHome_Ar2Cl.txt
CUDA_VISIBLE_DEVICES=0 python examples-da/partial/mdd.py data/office-home -d OfficeHome -s Ar -t Pr -a resnet50 --epochs 30 --temperature 0.01 --seed 0 > benchmarks/da/partial/mdd/OfficeHome_Ar2Pr.txt
CUDA_VISIBLE_DEVICES=0 python examples-da/partial/mdd.py data/office-home -d OfficeHome -s Ar -t Rw -a resnet50 --epochs 30 --temperature 0.01 --seed 0 > benchmarks/da/partial/mdd/OfficeHome_Ar2Rw.txt
CUDA_VISIBLE_DEVICES=0 python examples-da/partial/mdd.py data/office-home -d OfficeHome -s Cl -t Ar -a resnet50 --epochs 30 --temperature 0.01 --seed 0 > benchmarks/da/partial/mdd/OfficeHome_Cl2Ar.txt
CUDA_VISIBLE_DEVICES=0 python examples-da/partial/mdd.py data/office-home -d OfficeHome -s Cl -t Pr -a resnet50 --epochs 30 --temperature 0.01 --seed 0 > benchmarks/da/partial/mdd/OfficeHome_Cl2Pr.txt
CUDA_VISIBLE_DEVICES=0 python examples-da/partial/mdd.py data/office-home -d OfficeHome -s Cl -t Rw -a resnet50 --epochs 30 --temperature 0.01 --seed 0 > benchmarks/da/partial/mdd/OfficeHome_Cl2Rw.txt
CUDA_VISIBLE_DEVICES=0 python examples-da/partial/mdd.py data/office-home -d OfficeHome -s Pr -t Ar -a resnet50 --epochs 30 --temperature 0.01 --seed 0 > benchmarks/da/partial/mdd/OfficeHome_Pr2Ar.txt
CUDA_VISIBLE_DEVICES=0 python examples-da/partial/mdd.py data/office-home -d OfficeHome -s Pr -t Cl -a resnet50 --epochs 30 --temperature 0.01 --seed 0 > benchmarks/da/partial/mdd/OfficeHome_Pr2Cl.txt
CUDA_VISIBLE_DEVICES=0 python examples-da/partial/mdd.py data/office-home -d OfficeHome -s Pr -t Rw -a resnet50 --epochs 30 --temperature 0.01 --seed 0 > benchmarks/da/partial/mdd/OfficeHome_Pr2Rw.txt
CUDA_VISIBLE_DEVICES=0 python examples-da/partial/mdd.py data/office-home -d OfficeHome -s Rw -t Ar -a resnet50 --epochs 30 --temperature 0.01 --seed 0 > benchmarks/da/partial/mdd/OfficeHome_Rw2Ar.txt
CUDA_VISIBLE_DEVICES=0 python examples-da/partial/mdd.py data/office-home -d OfficeHome -s Rw -t Cl -a resnet50 --epochs 30 --temperature 0.01 --seed 0 > benchmarks/da/partial/mdd/OfficeHome_Rw2Cl.txt
CUDA_VISIBLE_DEVICES=0 python examples-da/partial/mdd.py data/office-home -d OfficeHome -s Rw -t Pr -a resnet50 --epochs 30 --temperature 0.01 --seed 0 > benchmarks/da/partial/mdd/OfficeHome_Rw2Pr.txt

# VisDA-2017
CUDA_VISIBLE_DEVICES=0 python examples-da/partial/mdd.py data/visda-2017 -d VisDA2017 -s Synthetic -t Real -a resnet50 --epochs 20 --seed 0 -u 500 -i 500 --center-crop --trade-off 0.4 --per-class-eval > benchmarks/da/partial/mdd/VisDA2017_S2R.txt
# ImageNet-Caltech
CUDA_VISIBLE_DEVICES=0 python examples-da/partial/mdd.py data/ImageNetCaltech -d ImageNetCaltech -s I -t C -a resnet50 --epochs 20 --seed 0 --lr 0.003 --temperature 0.01 -u 2000 -i 2000 > benchmarks/da/partial/mdd/I2C.txt
CUDA_VISIBLE_DEVICES=0 python examples-da/partial/mdd.py data/ImageNetCaltech -d CaltechImageNet -s C -t I -a resnet50 --epochs 20 --seed 0 --lr 0.003 --temperature 0.01 -u 2000 -i 2000 --bottleneck-dim 2048 > benchmarks/da/partial/mdd/C2I.txt