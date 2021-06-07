#!/usr/bin/env bash
#CUB-200-2011
CUDA_VISIBLE_DEVICES=0 python baseline.py data/cub200 -d CUB200 -sr 100 --seed 0 --log logs/baseline/cub200_100
CUDA_VISIBLE_DEVICES=0 python baseline.py data/cub200 -d CUB200 -sr 50 --seed 0 --log logs/baseline/cub200_50
CUDA_VISIBLE_DEVICES=0 python baseline.py data/cub200 -d CUB200 -sr 30 --seed 0 --log logs/baseline/cub200_30
CUDA_VISIBLE_DEVICES=0 python baseline.py data/cub200 -d CUB200 -sr 15 --seed 0 --log logs/baseline/cub200_15

# Standford Cars
CUDA_VISIBLE_DEVICES=0 python baseline.py data/stanford_cars -d StanfordCars -sr 100 --seed 0 --log logs/baseline/car_100
CUDA_VISIBLE_DEVICES=0 python baseline.py data/stanford_cars -d StanfordCars -sr 50 --seed 0 --log logs/baseline/car_50
CUDA_VISIBLE_DEVICES=0 python baseline.py data/stanford_cars -d StanfordCars -sr 30 --seed 0 --log logs/baseline/car_30
CUDA_VISIBLE_DEVICES=0 python baseline.py data/stanford_cars -d StanfordCars -sr 15 --seed 0 --log logs/baseline/car_15

# Aircrafts
CUDA_VISIBLE_DEVICES=0 python baseline.py data/aircraft -d Aircraft -sr 100 --seed 0 --log logs/baseline/aircraft_100
CUDA_VISIBLE_DEVICES=0 python baseline.py data/aircraft -d Aircraft -sr 50 --seed 0 --log logs/baseline/aircraft_50
CUDA_VISIBLE_DEVICES=0 python baseline.py data/aircraft -d Aircraft -sr 30 --seed 0 --log logs/baseline/aircraft_30
CUDA_VISIBLE_DEVICES=0 python baseline.py data/aircraft -d Aircraft -sr 15 --seed 0 --log logs/baseline/aircraft_15

# Stanford Dogs
CUDA_VISIBLE_DEVICES=0 python baseline.py data/stanford_dogs -d StanfordDogs -sr 100 --seed 0 --log logs/baseline/dogs_100 --lr 0.001
CUDA_VISIBLE_DEVICES=0 python baseline.py data/stanford_dogs -d StanfordDogs -sr 50 --seed 0 --log logs/baseline/dogs_50 --lr 0.001
CUDA_VISIBLE_DEVICES=0 python baseline.py data/stanford_dogs -d StanfordDogs -sr 30 --seed 0 --log logs/baseline/dogs_30 --lr 0.001
CUDA_VISIBLE_DEVICES=0 python baseline.py data/stanford_dogs -d StanfordDogs -sr 15 --seed 0 --log logs/baseline/dogs_15 --lr 0.001

# Oxford-III pet
CUDA_VISIBLE_DEVICES=0 python baseline.py data/oxford_pet -d OxfordIIITPet -sr 100 --seed 0 --log logs/baseline/pet_100 --lr 0.001
CUDA_VISIBLE_DEVICES=0 python baseline.py data/oxford_pet -d OxfordIIITPet -sr 50 --seed 0 --log logs/baseline/pet_50 --lr 0.001
CUDA_VISIBLE_DEVICES=0 python baseline.py data/oxford_pet -d OxfordIIITPet -sr 30 --seed 0 --log logs/baseline/pet_30 --lr 0.001
CUDA_VISIBLE_DEVICES=0 python baseline.py data/oxford_pet -d OxfordIIITPet -sr 15 --seed 0 --log logs/baseline/pet_15 --lr 0.001

# COCO-70
CUDA_VISIBLE_DEVICES=0 python baseline.py data/coco70 -d COCO70 -sr 100 --seed 0 --log logs/baseline/coco_100
CUDA_VISIBLE_DEVICES=0 python baseline.py data/coco70 -d COCO70 -sr 50 --seed 0 --log logs/baseline/coco_50
CUDA_VISIBLE_DEVICES=0 python baseline.py data/coco70 -d COCO70 -sr 30 --seed 0 --log logs/baseline/coco_30
CUDA_VISIBLE_DEVICES=0 python baseline.py data/coco70 -d COCO70 -sr 15 --seed 0 --log logs/baseline/coco_15
