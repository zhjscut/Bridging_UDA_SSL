
# Source-only
CUDA_VISIBLE_DEVICES=0 python source_only.py data/domainnet -d DomainNet -s c -t i -a resnet50 --epochs 20 -i 2500 --seed 0 --lr 0.01 --log logs/src_only/DomainNet_c2i
CUDA_VISIBLE_DEVICES=0 python source_only.py data/domainnet -d DomainNet -s i -t p -a resnet50 --epochs 20 -i 2500 --seed 0 --lr 0.01 --log logs/src_only/DomainNet_i2p
CUDA_VISIBLE_DEVICES=0 python source_only.py data/domainnet -d DomainNet -s p -t q -a resnet50 --epochs 20 -i 2500 --seed 0 --lr 0.01 --log logs/src_only/DomainNet_p2r
CUDA_VISIBLE_DEVICES=0 python source_only.py data/domainnet -d DomainNet -s q -t r -a resnet50 --epochs 20 -i 2500 --seed 0 --lr 0.01 --log logs/src_only/DomainNet_r2i
CUDA_VISIBLE_DEVICES=0 python source_only.py data/domainnet -d DomainNet -s r -t s -a resnet50 --epochs 20 -i 2500 --seed 0 --lr 0.01 --log logs/src_only/DomainNet_r2s
CUDA_VISIBLE_DEVICES=0 python source_only.py data/domainnet -d DomainNet -s s -t c -a resnet50 --epochs 20 -i 2500 --seed 0 --lr 0.01 --log logs/src_only/DomainNet_s2c

# MCD
CUDA_VISIBLE_DEVICES=0 python mcd.py data/domainnet -d DomainNet -s c -t i -a resnet50 --epochs 30 -i 2500 --seed 0 --trade-off 120.0 --log logs/mcd/DomainNet_c2i
CUDA_VISIBLE_DEVICES=0 python mcd.py data/domainnet -d DomainNet -s i -t p -a resnet50 --epochs 30 -i 2500 --seed 0 --trade-off 120.0 --log logs/mcd/DomainNet_i2p
CUDA_VISIBLE_DEVICES=0 python mcd.py data/domainnet -d DomainNet -s p -t q -a resnet50 --epochs 30 -i 2500 --seed 0 --trade-off 120.0 --log logs/mcd/DomainNet_p2q
CUDA_VISIBLE_DEVICES=0 python mcd.py data/domainnet -d DomainNet -s q -t r -a resnet50 --epochs 30 -i 2500 --seed 0 --trade-off 120.0 --log logs/mcd/DomainNet_q2r
CUDA_VISIBLE_DEVICES=0 python mcd.py data/domainnet -d DomainNet -s r -t s -a resnet50 --epochs 30 -i 2500 --seed 0 --trade-off 120.0 --log logs/mcd/DomainNet_r2s
CUDA_VISIBLE_DEVICES=0 python mcd.py data/domainnet -d DomainNet -s s -t c -a resnet50 --epochs 30 -i 2500 --seed 0 --trade-off 120.0 --log logs/mcd/DomainNet_s2c

# DANN
CUDA_VISIBLE_DEVICES=0 python dann.py data/domainnet -d DomainNet -s c -t i -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/dann/DomainNet_c2i
CUDA_VISIBLE_DEVICES=0 python dann.py data/domainnet -d DomainNet -s i -t p -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/dann/DomainNet_i2p
CUDA_VISIBLE_DEVICES=0 python dann.py data/domainnet -d DomainNet -s p -t q -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/dann/DomainNet_p2q
CUDA_VISIBLE_DEVICES=0 python dann.py data/domainnet -d DomainNet -s q -t r -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/dann/DomainNet_q2r
CUDA_VISIBLE_DEVICES=0 python dann.py data/domainnet -d DomainNet -s r -t s -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/dann/DomainNet_r2s
CUDA_VISIBLE_DEVICES=0 python dann.py data/domainnet -d DomainNet -s s -t c -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/dann/DomainNet_s2c

# CDAN
CUDA_VISIBLE_DEVICES=0 python cdan.py data/domainnet -d DomainNet -s c -t i -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/cdan/DomainNet_c2i
CUDA_VISIBLE_DEVICES=0 python cdan.py data/domainnet -d DomainNet -s i -t p -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/cdan/DomainNet_i2p
CUDA_VISIBLE_DEVICES=0 python cdan.py data/domainnet -d DomainNet -s p -t q -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/cdan/DomainNet_p2q
CUDA_VISIBLE_DEVICES=0 python cdan.py data/domainnet -d DomainNet -s q -t r -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/cdan/DomainNet_q2r
CUDA_VISIBLE_DEVICES=0 python cdan.py data/domainnet -d DomainNet -s r -t s -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/cdan/DomainNet_r2s
CUDA_VISIBLE_DEVICES=0 python cdan.py data/domainnet -d DomainNet -s s -t c -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/cdan/DomainNet_s2c

# MDD
CUDA_VISIBLE_DEVICES=0 python mdd.py data/domainnet -d DomainNet -s c -t i -a resnet50 --epochs 40 -i 5000 -p 500 --bottleneck-dim 2048 --seed 0 --lr 0.004 --log logs/mdd/DomainNet_c2i
CUDA_VISIBLE_DEVICES=0 python mdd.py data/domainnet -d DomainNet -s i -t p -a resnet50 --epochs 40 -i 5000 -p 500 --bottleneck-dim 2048 --seed 0 --lr 0.004 --log logs/mdd/DomainNet_i2p
CUDA_VISIBLE_DEVICES=0 python mdd.py data/domainnet -d DomainNet -s p -t q -a resnet50 --epochs 40 -i 5000 -p 500 --bottleneck-dim 2048 --seed 0 --lr 0.004 --log logs/mdd/DomainNet_p2q
CUDA_VISIBLE_DEVICES=0 python mdd.py data/domainnet -d DomainNet -s q -t r -a resnet50 --epochs 40 -i 5000 -p 500 --bottleneck-dim 2048 --seed 0 --lr 0.004 --log logs/mdd/DomainNet_q2r
CUDA_VISIBLE_DEVICES=0 python mdd.py data/domainnet -d DomainNet -s r -t s -a resnet50 --epochs 40 -i 5000 -p 500 --bottleneck-dim 2048 --seed 0 --lr 0.004 --log logs/mdd/DomainNet_r2s
CUDA_VISIBLE_DEVICES=0 python mdd.py data/domainnet -d DomainNet -s s -t c -a resnet50 --epochs 40 -i 5000 -p 500 --bottleneck-dim 2048 --seed 0 --lr 0.004 --log logs/mdd/DomainNet_s2c

# AFN
CUDA_VISIBLE_DEVICES=0 python afn.py data/domainnet -d DomainNet -s c -t i -a resnet50 --epochs 20 --seed 0 --trade-off-norm 0.01 --lr 0.002 --log logs/afn/DomainNet_c2i
CUDA_VISIBLE_DEVICES=0 python afn.py data/domainnet -d DomainNet -s i -t p -a resnet50 --epochs 20 --seed 0 --trade-off-norm 0.01 --lr 0.002 --log logs/afn/DomainNet_i2p
CUDA_VISIBLE_DEVICES=0 python afn.py data/domainnet -d DomainNet -s p -t q -a resnet50 --epochs 20 --seed 0 --trade-off-norm 0.01 --lr 0.002 --log logs/afn/DomainNet_p2q
CUDA_VISIBLE_DEVICES=0 python afn.py data/domainnet -d DomainNet -s q -t r -a resnet50 --epochs 20 --seed 0 --trade-off-norm 0.01 --lr 0.002 --log logs/afn/DomainNet_q2r
CUDA_VISIBLE_DEVICES=0 python afn.py data/domainnet -d DomainNet -s r -t s -a resnet50 --epochs 20 --seed 0 --trade-off-norm 0.01 --lr 0.002 --log logs/afn/DomainNet_r2s
CUDA_VISIBLE_DEVICES=0 python afn.py data/domainnet -d DomainNet -s s -t c -a resnet50 --epochs 20 --seed 0 --trade-off-norm 0.01 --lr 0.002 --log logs/afn/DomainNet_s2c

# MCC
CUDA_VISIBLE_DEVICES=0 python mcc.py data/domainnet -d DomainNet -s c -t i -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --temperature 2.0 --lr 0.005 --bottleneck-dim 2048 --log logs/mcc/DomainNet_c2i --trade-off 10.0
CUDA_VISIBLE_DEVICES=0 python mcc.py data/domainnet -d DomainNet -s i -t p -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --temperature 2.0 --lr 0.005 --bottleneck-dim 2048 --log logs/mcc/DomainNet_i2p --trade-off 10.0
CUDA_VISIBLE_DEVICES=0 python mcc.py data/domainnet -d DomainNet -s p -t q -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --temperature 2.0 --lr 0.005 --bottleneck-dim 2048 --log logs/mcc/DomainNet_p2q --trade-off 10.0
CUDA_VISIBLE_DEVICES=0 python mcc.py data/domainnet -d DomainNet -s q -t r -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --temperature 2.0 --lr 0.005 --bottleneck-dim 2048 --log logs/mcc/DomainNet_q2r --trade-off 10.0
CUDA_VISIBLE_DEVICES=0 python mcc.py data/domainnet -d DomainNet -s r -t s -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --temperature 2.0 --lr 0.005 --bottleneck-dim 2048 --log logs/mcc/DomainNet_r2s --trade-off 10.0
CUDA_VISIBLE_DEVICES=0 python mcc.py data/domainnet -d DomainNet -s s -t c -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --temperature 2.0 --lr 0.005 --bottleneck-dim 2048 --log logs/mcc/DomainNet_s2c --trade-off 10.0

# Oracle
CUDA_VISIBLE_DEVICES=0 python source_only.py data/domainnet -d DomainNet -s c -t c -a resnet50 --epochs 20 -i 2500 --seed 0 --lr 0.01 --log logs/oracle/DomainNet_c
CUDA_VISIBLE_DEVICES=0 python source_only.py data/domainnet -d DomainNet -s i -t i -a resnet50 --epochs 20 -i 2500 --seed 0 --lr 0.01 --log logs/oracle/DomainNet_i
CUDA_VISIBLE_DEVICES=0 python source_only.py data/domainnet -d DomainNet -s p -t p -a resnet50 --epochs 20 -i 2500 --seed 0 --lr 0.01 --log logs/oracle/DomainNet_p
CUDA_VISIBLE_DEVICES=0 python source_only.py data/domainnet -d DomainNet -s q -t q -a resnet50 --epochs 20 -i 2500 --seed 0 --lr 0.01 --log logs/oracle/DomainNet_q
CUDA_VISIBLE_DEVICES=0 python source_only.py data/domainnet -d DomainNet -s r -t r -a resnet50 --epochs 20 -i 2500 --seed 0 --lr 0.01 --log logs/oracle/DomainNet_r
CUDA_VISIBLE_DEVICES=0 python source_only.py data/domainnet -d DomainNet -s s -t s -a resnet50 --epochs 20 -i 2500 --seed 0 --lr 0.01 --log logs/oracle/DomainNet_s

# self-ensemble
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/domainnet -d DomainNet -s c -t i -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/self_ensemble/DomainNet_c2i
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/domainnet -d DomainNet -s i -t p -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/self_ensemble/DomainNet_i2p
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/domainnet -d DomainNet -s p -t q -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/self_ensemble/DomainNet_p2q
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/domainnet -d DomainNet -s q -t r -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/self_ensemble/DomainNet_q2r
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/domainnet -d DomainNet -s r -t s -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/self_ensemble/DomainNet_r2s
CUDA_VISIBLE_DEVICES=0 python self_ensemble.py data/domainnet -d DomainNet -s s -t c -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --log logs/self_ensemble/DomainNet_s2c

# MDD+Consistency
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/domainnet --thr 0.7 -d DomainNet -s c -t i -a resnet50 --epochs 40 -i 5000 -p 500 --bottleneck-dim 2048 --seed 1 --lr 0.004 --log logs/mdd_consistency/DomainNet_c2i
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/domainnet --thr 0.7 -d DomainNet -s i -t p -a resnet50 --epochs 40 -i 5000 -p 500 --bottleneck-dim 2048 --seed 1 --lr 0.004 --log logs/mdd_consistency/DomainNet_i2p
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/domainnet --thr 0.7 -d DomainNet -s p -t q -a resnet50 --epochs 40 -i 5000 -p 500 --bottleneck-dim 2048 --seed 1 --lr 0.004 --log logs/mdd_consistency/DomainNet_p2q
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/domainnet --thr 0.7 -d DomainNet -s q -t r -a resnet50 --epochs 40 -i 5000 -p 500 --bottleneck-dim 2048 --seed 1 --lr 0.004 --log logs/mdd_consistency/DomainNet_q2r
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/domainnet --thr 0.7 -d DomainNet -s r -t s -a resnet50 --epochs 40 -i 5000 -p 500 --bottleneck-dim 2048 --seed 1 --lr 0.004 --log logs/mdd_consistency/DomainNet_r2s
CUDA_VISIBLE_DEVICES=0 python mdd_consistency.py data/domainnet --thr 0.7 -d DomainNet -s s -t c -a resnet50 --epochs 40 -i 5000 -p 500 --bottleneck-dim 2048 --seed 1 --lr 0.004 --log logs/mdd_consistency/DomainNet_s2c

# MCC+Consistency
CUDA_VISIBLE_DEVICES=0 python mcc_consistency.py data/domainnet --thr 0.7 -d DomainNet -s c -t i -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --temperature 2.0 --lr 0.005 --bottleneck-dim 2048 --log logs/mcc_consistency/DomainNet_c2i --trade-off 10.0
CUDA_VISIBLE_DEVICES=0 python mcc_consistency.py data/domainnet --thr 0.7 -d DomainNet -s i -t p -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --temperature 2.0 --lr 0.005 --bottleneck-dim 2048 --log logs/mcc_consistency/DomainNet_i2p --trade-off 10.0
CUDA_VISIBLE_DEVICES=0 python mcc_consistency.py data/domainnet --thr 0.7 -d DomainNet -s p -t q -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --temperature 2.0 --lr 0.005 --bottleneck-dim 2048 --log logs/mcc_consistency/DomainNet_p2q --trade-off 10.0
CUDA_VISIBLE_DEVICES=0 python mcc_consistency.py data/domainnet --thr 0.7 -d DomainNet -s q -t r -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --temperature 2.0 --lr 0.005 --bottleneck-dim 2048 --log logs/mcc_consistency/DomainNet_q2r --trade-off 10.0
CUDA_VISIBLE_DEVICES=0 python mcc_consistency.py data/domainnet --thr 0.7 -d DomainNet -s r -t s -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --temperature 2.0 --lr 0.005 --bottleneck-dim 2048 --log logs/mcc_consistency/DomainNet_r2s --trade-off 10.0
CUDA_VISIBLE_DEVICES=0 python mcc_consistency.py data/domainnet --thr 0.7 -d DomainNet -s s -t c -a resnet50 --epochs 30 -i 2500 -p 500 --seed 0 --temperature 2.0 --lr 0.005 --bottleneck-dim 2048 --log logs/mcc_consistency/DomainNet_s2c --trade-off 10.0
