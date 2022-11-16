#!/bin/bash

docker run \
    --gpus all \
    --ipc=host \
    --net=host \
    --rm \
    -it \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unit:/tmp/.X11-unix:rw" \
    --mount type=bind,source=/home/amsl/Dev,target=/home/amsl/Dev \
    orb_slam3_ros_wrapper2
