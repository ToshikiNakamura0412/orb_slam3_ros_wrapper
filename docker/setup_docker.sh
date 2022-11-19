# build opencv
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
echo "source /home/amsl/catkin_ws/devel/setup.bash" >> ~/.bashrc
echo "export ROS_WORKSPACE=/home/amsl/catkin_ws" >> ~/.bashrc
echo "export ROS_PACKAGE_PATH=/home/amsl/catkin_ws/src:$ROS_PACKAGE_PATH" >> ~/.bashrc
source ~/.bashrc

# build orb_slam3_ros_wrapper
sudo ldconfig
cd /home/amsl/catkin_ws
catkin build
