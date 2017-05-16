
export WORLD_SIZE=2
export MASTER_PORT=26123
export MASTER_ADDR="localhost:$MASTER_PORT"

#PYTHONUNBUFFERED=1 RANK=0 CUDA_VISIBLE_DEVICES=0 gdb -ex r -ex bt --args python3 main.py /data/local/packages/ai-group.imagenet-full-size/prod/imagenet_full_size -j 10 --arch resnet50 --batch-size 32 --lr 0.025 >1.out 2>&1 &
PYTHONUNBUFFERED=1 RANK=0 CUDA_VISIBLE_DEVICES=0 python3 main.py /data/local/packages/ai-group.imagenet-full-size/prod/imagenet_full_size -j 10 --arch resnet50 --batch-size 32 --lr 0.025 >1.out 2>&1 &

#PYTHONUNBUFFERED=1 RANK=1 CUDA_VISIBLE_DEVICES=1 python3 main.py /data/local/packages/ai-group.imagenet-full-size/prod/imagenet_full_size -j 10 --arch resnet50 --batch-size 32 --lr 0.025 >2.out 2>&1

wait
