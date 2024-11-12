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

RUN git clone --recursive https://github.com/fa0311/pytorch-ssd-forked
WORKDIR /app/pytorch-ssd-forked
RUN pip install -r requirements.txt
RUN pip install opencv-python

RUN wget https://github.com/fa0311/pytorch-ssd-archive-model/releases/download/v0.0.1/mobilenet-v1-ssd-mp-0_675.pth -O models/mobilenet-v1-ssd-mp-0_675.pth
RUN wget https://github.com/fa0311/pytorch-ssd-archive-model/releases/download/v0.0.1/mb2-ssd-lite-mp-0_686.pth -O models/mb2-ssd-lite-mp-0_686.pth