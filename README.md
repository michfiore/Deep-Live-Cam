# README

run init_repo.sh

This script will
- install required libraries, including cudnn (not present on the sagemaker machines it seems)
- download deepfake models
- install uv
- create a virtual environment with uv
- install all dependencies

Important: system dependencies are erased from Sagemaker machine when you close it. You will need to run init_repo.sh every time (some steps, like creating the venv will just be skipped)

from a jupyter notebook you can select the environment in .venv (Python 3.10.18)
If you cannot see it try refreshing the window
