#!/bin/bash

# Check if NVIDIA runtime is available
if ! docker info | grep -q 'nvidia'; then
    echo "NVIDIA runtime is not available. Please install NVIDIA Docker runtime."
    exit 1
fi

# Docker image name
IMAGE_NAME="e2e-agt:latest"

# Docker container name
CONTAINER_NAME="e2e-agt"

# Host volume path
HOST_VOLUME_PATH="volume"

# Container volume path
CONTAINER_VOLUME_PATH="/ws/volume"

# Run the Docker container with GPU support and volume mapping
docker run -it --gpus all --name $CONTAINER_NAME -p 8888:8888 -v $HOST_VOLUME_PATH:$CONTAINER