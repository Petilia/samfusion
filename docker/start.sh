#!/bin/bash

ARCH="$(uname -m)"
workspace_dir=$PWD

docker run -it -d --rm \
    --gpus all \
    --ipc host \
    --network host \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --privileged \
    --name samfusion \
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
    -v $workspace_dir/../samfusion/:/home/docker_current/samfusion:rw \
    -v /media/doctor/Elements/samfusion_cache/:/home/docker_current/.cache \
    ${ARCH}/samfusion:latest




