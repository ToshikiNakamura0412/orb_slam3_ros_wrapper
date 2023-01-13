FROM ros:noetic-ros-base

# Update
RUN apt-get update && apt-get upgrade -y

# Install
RUN apt-get install -y \
    cmake \
    git \
    vim \
    tmux \
    python-dev \
    python-numpy \
    python3-catkin-tools \
    build-essential \
    pkg-config \
    libgtk2.0-dev \
    libavcodec-dev \
    libavformat-dev \
    libswscale-dev \
    libtbb2 \
    libtbb-dev \
    libjpeg-dev \
    libpng-dev \
    libtiff-dev \
    libdc1394-22-dev \
    libglew-dev \
    libboost-all-dev \
    libssl-dev \
    libeigen3-dev \
    libcanberra-gtk-module \
    libcanberra-gtk3-module \
    libgtk-3-dev

# Install ros pkg
RUN apt-get install -y \
    ros-noetic-cv-bridge \
    ros-noetic-image-transport
RUN apt-get update
RUN apt-get install -y ros-noetic-tf

# Clone
WORKDIR /home/amsl
RUN git clone -b feature-docker https://github.com/ToshikiNakamura0412/orb_slam3_ros_wrapper.git /home/amsl/catkin_ws/src/orb_slam3_ros_wrapper
RUN git clone -b develop https://github.com/ToshikiNakamura0412/ORB_SLAM3.git /home/amsl/Dev/ORB_SLAM3
RUN git clone -b 4.4.0 https://github.com/opencv/opencv.git /home/amsl/Dev/opencv
RUN git clone https://github.com/stevenlovegrove/Pangolin.git /home/amsl/Dev/Pangolin

# Build
RUN /home/amsl/catkin_ws/src/orb_slam3_ros_wrapper/docker/docker2/scripts/setup_docker
