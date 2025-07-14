#!/bin/bash
set -e

echo "Installing system dependencies"

sudo apt-get update 
sudo apt-get install -y python3-opencv zlib1g-dev libmagic1 ffmpeg cudnn9-cuda-12

echo "Downloading models"

aws s3 cp s3://sagemaker-production-eu-central-1-kl-biometric-datasets/raw_datasets/face_biometrics/deepfakes/hackathon_2025-07_deepfakes/models/inswapper_128_fp16.onnx ./models/inswapper_128_fp16.onnx
curl -L -o models/GFPGANv1.4.pth https://github.com/TencentARC/GFPGAN/releases/download/v1.3.4/GFPGANv1.4.pth

echo "Installing uv"

curl -LsSf https://astral.sh/uv/install.sh | sh
uv python install 3.10
uv sync

