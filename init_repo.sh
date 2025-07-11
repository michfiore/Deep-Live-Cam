#!/bin/bash
set -e

echo "Installing system dependencies"

sudo apt-get update 
sudo apt-get install -y python3-opencv zlib1g-dev libmagic1 ffmpeg cudnn9-cuda-12

echo "Downloading models"

curl -L -o models/inswapper_128_fp16.onnx https://huggingface.co/hacksider/deep-live-cam/resolve/main/inswapper_128_fp16.onnx 
curl -L -o models/GFPGANv1.4.pth https://github.com/TencentARC/GFPGAN/releases/download/v1.3.4/GFPGANv1.4.pth

echo "Installing uv"

curl -LsSf https://astral.sh/uv/install.sh | sh
uv python install 3.10
uv sync

