#!/bin/bash

docker run \
    --gpus all \
    --ipc=host \
    --net=host \
    --rm \
    -it \
    --mount type=bind,source=/home/amsl/catkin_ws,target=/home/amsl/catkin_ws \
    --mount type=bind,source=/home/amsl/Dev/ORB_SLAM3,target=/home/amsl/Dev/ORB_SLAM3 \
    --mount type=bind,source=/home/amsl/Dev/Pangolin,target=/home/amsl/Dev/Pangolin \
    --mount type=bind,source=/home/amsl/Dev/opencv,target=/home/amsl/Dev/opencv \
    orb_slam3_ros_wrapper
