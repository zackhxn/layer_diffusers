#!/bin/bash

export MODEL_DIR="/gpfsdata/home/zhangchenkai/download/stable-diffusion-v1-5"
export OUTPUT_DIR="/gpfsdata/home/zhangchenkai/download/ADE_mask2image_diffuser"

accelerate launch --mixed_precision="fp16" train_controlnet.py \
 --pretrained_model_name_or_path=$MODEL_DIR \
 --output_dir=$OUTPUT_DIR \
 --train_data_dir='/gpfsdata/home/zhangchenkai/download/ADEgray' \
 --image_column="image" \
 --conditioning_image_column="conditioning_image" \
 --caption_column="text" \
 --resolution=512 \
 --learning_rate=1e-5 \
 --train_batch_size=1 \
 --num_train_epochs=30 \
 --gradient_accumulation_steps=4 \
 --mixed_precision fp16

