#!/bin/bash

docker run \
    --gpus all \
    --ipc=host \
    --net=host \
    -it \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unit:/tmp/.X11-unix:rw" \
    ros-noetic-for-orb_slam3
