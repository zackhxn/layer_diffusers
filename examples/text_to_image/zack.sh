
export MODEL_NAME="/gpfsdata/home/zhangchenkai/download/stable-diffusion-v1-5"
export DATASET_NAME="/gpfsdata/home/zhangchenkai/download/ADE_single"

accelerate launch --mixed_precision="fp16" train_text_to_image.py \
  --pretrained_model_name_or_path=$MODEL_NAME \
  --train_data_dir=$DATASET_NAME \
  --use_ema \
  --resolution=512 --center_crop --random_flip \
  --train_batch_size=1 \
  --gradient_accumulation_steps=4 \
  --gradient_checkpointing \
  --num_train_epochs=30 \
  --validation_prompts="airplane"
  --learning_rate=1e-05 \
  --max_grad_norm=1 \
  --lr_scheduler="constant" --lr_warmup_steps=0 \
  --output_dir="/gpfsdata/home/zhangchenkai/download/sd_single_mask"