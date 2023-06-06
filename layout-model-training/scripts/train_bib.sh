#!/bin/bash

cd ../tools

python train_net.py \
    --dataset_name          my_dataset \
    --json_annotation_train /scratch/students/mamlouk/downloaded-annotations/train.json \
    --image_path_train      /scratch/students/mamlouk/downloaded-annotations/images/train/ \
    --json_annotation_val   /scratch/students/mamlouk/downloaded-annotations/test.json \
    --image_path_val        /scratch/students/mamlouk/downloaded-annotations/images/test/ \
    --config-file           ../configs/pubNet/config.yml \
    MODEL.WEIGHTS ../configs/pubNet/model_final.pth \
    OUTPUT_DIR  ../output/ \
    SOLVER.CHECKPOINT_PERIOD 20000 \
    SOLVER.MAX_ITER 80000 \
    SOLVER.IMS_PER_BATCH 2 \
    INPUT.RANDOM_FLIP "vertical"
