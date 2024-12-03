#!/bin/bash

DIR="/app/pytorch-ssd-forked/models/output/tensorboard"

while [ ! -d "$DIR" ]; do
  echo "Waiting..."
  sleep 5
done

echo "Start TensorBoard"
tensorboard --logdir "$DIR" --bind_all
