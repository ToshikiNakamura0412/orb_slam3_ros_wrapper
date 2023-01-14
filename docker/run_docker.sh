#!/bin/sh

docker run \
    --ipc=host \
    --net=host \
    --rm \
    -it \
    toshikinakamura/ros-noetic-for-orb-slam3:0.0.2
    # ros-noetic-for-orb-slam3
