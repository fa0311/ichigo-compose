FROM nvidia/cuda:11.3.1-cudnn8-runtime-ubuntu20.04

WORKDIR /app
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
RUN apt update
RUN apt install -y \
    wget \
    bzip2 \
    build-essential \
    git \
    git-lfs \
    curl \
    ca-certificates \
    libsndfile1-dev \
    libgl1

RUN apt install -y python3.8 python3-pip
RUN pip install torch==1.12.1+cu113 torchvision==0.13.1+cu113 torchaudio==0.12.1 --extra-index-url https://download.pytorch.org/whl/cu113
RUN python3 -c "import torch; print(torch.cuda.is_available());"

