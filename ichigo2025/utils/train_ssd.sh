python3 train_ssd.py \
    --pretrained-ssd=models/mb2-ssd-lite-mp-0_686.pth \
    --net=mb2-ssd-lite \
    --dataset-type=voc \
    --data=data/voc \
    --model-dir=models/output \
    --num-workers=8 \
    --batch-size=16 \
    --num-epochs=50 \
    --validation-epochs=1 \
    --lr=0.01 \
    --base-net-lr=0.002 \
    --extra-layers-lr=0.01 \
    --weight-decay=0.000001

# python3 train_ssd.py \
#     --pretrained-ssd=models/mb2-ssd-lite-mp-0_686.pth \
#     --net=mb2-ssd-lite \
#     --dataset-type=voc \
#     --data=data/voc/berries_project_JA-PascalVOC-export \
#     --model-dir=models/output_old \
#     --num-workers=8 \
#     --batch-size=16 \
#     --num-epochs=50 \
#     --validation-epochs=1