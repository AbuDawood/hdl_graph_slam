#!/bin/bash


apt-get update && apt-get install -y --no-install-recommends &&
    apt-get install -y --no-install-recommends \
        wget nano build-essential libomp-dev clang lld git ros-noetic-geodesy ros-noetic-pcl-ros ros-noetic-nmea-msgs \
        ros-noetic-rviz ros-noetic-tf-conversions ros-noetic-libg2o &&
    apt-get clean &&
    rm -rf /var/lib/apt/lists/*

#TODO: make them enabeled only at initial execution
#mkdir -p /workspaces/hdl_slam_devcontainer/src

cd $1/src

#/bin/bash -c '. /opt/ros/noetic/setup.bash; catkin_init_workspace'

#git clone https://github.com/koide3/ndt_omp.git
#git clone https://github.com/SMRT-AIST/fast_gicp.git --recursive

cd $1

#/bin/bash -c '. /opt/ros/noetic/setup.bash; catkin_make'

sed -i "6i source \"/workspaces/hdl_slam_devcontainer/devel/setup.bash\"" /ros_entrypoint.sh

cd
echo 'source /opt/ros/noetic/setup.bash' >>/root/.bashrc
