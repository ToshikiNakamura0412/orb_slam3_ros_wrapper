FROM ros:noetic-ros-base

WORKDIR /home/amsl

# Update
RUN apt-get update && apt-get upgrade -y

# Install
RUN apt-get install python3-catkin-tools git -y
RUN apt-get install -y build-essential
RUN apt-get install -y cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
RUN apt-get install -y python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-22-dev
RUN apt-get install -y libglew-dev libboost-all-dev libssl-dev
RUN apt-get install -y libeigen3-dev

# Install ros pkg
RUN apt-get install -y \
    ros-noetic-cv-bridge \
    ros-noetic-image-transport \
    ros-noetic-tf

# Clone
RUN git clone -b develop https://github.com/ToshikiNakamura0412/orb_slam3_ros_wrapper.git /home/amsl/catkin_ws/src/orb_slam3_ros_wrapper
RUN git clone
