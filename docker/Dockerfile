FROM ros:noetic-ros-base

WORKDIR /home/amsl

# Update
# RUN add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"
RUN apt-get update && apt-get upgrade -y

# Install
# RUN apt-get install -y libopencv-dev
RUN apt-get install -y build-essential
RUN apt-get install -y cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
# RUN apt-get install -y python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-22-dev libjasper-dev
RUN apt-get install -y python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-22-dev
RUN apt-get install -y libglew-dev libboost-all-dev libssl-dev
RUN apt-get install -y libeigen3-dev

# install ros pkg
RUN apt-get install -y \
    ros-noetic-cv-bridge \
    ros-noetic-image-transport \
    ros-noetic-tf

# Set ROS Noetic
# RUN echo "source /opt/ros/noetic/setup.bash" >> /root/.bashrc
# RUN echo "source /home/amsl/catkin_ws/devel/setup.bash" >> /root/.bashrc
# RUN echo "export ROS_WORKSPACE=/home/amsl/catkin_ws" >> /root/.bashrc
# RUN echo "export ROS_PACKAGE_PATH=/home/amsl/catkin_ws/src:$ROS_PACKAGE_PATH" >> /root/.bashrc
