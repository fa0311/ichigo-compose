FROM python:3.11

WORKDIR /app
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
RUN apt update


RUN git clone --recursive https://github.com/fa0311/image_data_augmentation
WORKDIR /app/image_data_augmentation
RUN pip install -r requirements.txt
CMD ["bash"]