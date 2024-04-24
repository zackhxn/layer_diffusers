python convert_original_controlnet_to_diffusers.py --checkpoint_path="/gpfsdata/home/zhangchenkai/zack_0_text2mask/ControlNet-main/lightning_logs/version_9616/checkpoints/epoch=16-step=85900.ckpt" \
    --original_config_file="/gpfsdata/home/zhangchenkai/zack_0_text2mask/ControlNet-main/models/cldm_v15.yaml" \
    --dump_path="/gpfsdata/home/zhangchenkai/download/ADE_mask2image_control" \
    --device="cuda:9"