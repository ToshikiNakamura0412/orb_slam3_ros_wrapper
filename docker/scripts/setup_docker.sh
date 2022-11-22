#!/bin/sh
#build opencv
cat /home/amsl/catkin_ws/src/orb_slam3_ros_wrapper/docker/scripts/cap_ffmpeg_impl.hpp > /home/amsl/Dev/opencv/modules/videoio/src/cap_ffmpeg_impl.hpp
cd /home/amsl/Dev/opencv
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=Release -D WITH_CUDA=OFF -D WITH_GTK=ON -D WITH_GTK3=ON -D WITH_GTK_2_X=OFF -DENABLE_PRECOMPILED_HEADERS=OFF -D CMAKE_INSTALL_PREFIX=/usr/local ..
make -j $(nproc)
sudo make install

# build pangolin
cd /home/amsl/Dev/Pangolin
mkdir build
cd build
cmake .. -D CMAKE_BUILD_TYPE=Release
make -j $(nproc)
sudo make install

# build ORB_SLAM3
cd /home/amsl/Dev/ORB_SLAM3
./build.sh

# set ros
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
echo "source /home/amsl/catkin_ws/src/orb_slam3_ros_wrapper/docker/scripts/build_catkin_ws.sh" >> ~/.bashrc
cat /home/amsl/catkin_ws/src/orb_slam3_ros_wrapper/docker/scripts/CMakeLists_for_ros.txt > /home/amsl/catkin_ws/src/orb_slam3_ros_wrapper/CMakeLists.txt
cat /home/amsl/Dev/ORB_SLAM3/Vocabulary/ORBvoc.txt > /home/amsl/catkin_ws/src/orb_slam3_ros_wrapper/config/ORBvoc.txt
