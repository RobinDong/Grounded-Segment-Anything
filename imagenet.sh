# depends on your device 
export CUDA_VISIBLE_DEVICES=0

python imagenet_grounded_sam.py \
  --config GroundingDINO/groundingdino/config/GroundingDINO_SwinT_OGC.py \
  --grounded_checkpoint groundingdino_swint_ogc.pth \
  --sam_checkpoint sam_vit_h_4b8939.pth \
  --input_image /Users/robin/Downloads/oxford_102_flowers/jpg/image_00526.jpg \
  --output_dir "/data/imagenet/train/segmented" \
  --box_threshold 0.25 \
  --text_threshold 0.25 \
  --text_prompt "flower" \
  --device "cuda"
