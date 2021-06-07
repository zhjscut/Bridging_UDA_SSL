# Source Only
# GTA5 to Cityscapes
CUDA_VISIBLE_DEVICES=0 python source_only.py data/GTA5 data/Cityscapes \
    -s GTA5 -t Cityscapes --log logs/src_only/gtav2cityscapes

# Synthia to Cityscapes
CUDA_VISIBLE_DEVICES=0 python source_only.py data/synthia data/Cityscapes \
    -s Synthia -t Cityscapes --log logs/src_only/synthia2cityscapes

# Cityscapes to FoggyCityscapes
CUDA_VISIBLE_DEVICES=0 python source_only.py data/Cityscapes data/Cityscapes \
    -s Cityscapes -t FoggyCityscapes --log logs/src_only/cityscapes2foggy

# Oracle
# Oracle Results on Cityscapes
CUDA_VISIBLE_DEVICES=0 python source_only.py data/Cityscapes data/Cityscapes \
    -s Cityscapes -t Cityscapes --log logs/oracle/cityscapes

# Oracle Results on Foggy Cityscapes
CUDA_VISIBLE_DEVICES=0 python source_only.py data/Cityscapes data/Cityscapes \
    -s FoggyCityscapes -t FoggyCityscapes --log logs/oracle/foggy_cityscapes

