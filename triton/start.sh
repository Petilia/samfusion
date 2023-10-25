#!/bin/bash

ARCH="$(uname -m)"
workspace_dir=$PWD

docker run --rm --gpus device=0 \
           --ipc=host \
           --ulimit memlock=-1 \
           --shm-size=256m \
           --name triton_samfusion \
            -p 8000:8000  \
            -p 8001:8001 \
            -p 8002:8002 \
            -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
            -v /media/doctor/Elements/samfusion_cache/:/home/docker_current/.cache \
            -v ./models/:/models:rw \
           -it \
           ${ARCH}/samfusion:latest


#    -v $(pwd)/convert_utils:/workspace/TensorRT/demo/convert_utils \
#    -v $(pwd)/engine-1.5:/workspace/TensorRT/demo/convert_utils/engine-1.5 \
#    -v $(pwd)/onnx-1.5:/workspace/TensorRT/demo/convert_utils/onnx-1.5  \
#    -v $(pwd)/models:/models \

# --ulimit stack=67108864 \

#  -v $(pwd)/onnx:/workspace/TensorRT/demo/Diffusion/onnx \
#  -v $(pwd)/engine:/workspace/TensorRT/demo/Diffusion/engine \
# -v $(pwd)/output:/workspace/TensorRT/demo/Diffusion/output \