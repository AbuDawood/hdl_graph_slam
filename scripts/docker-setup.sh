#!/bin/bash


#TODO: make them enabeled only at initial execution
#mkdir -p /workspaces/hdl_slam_devcontainer/src

cd $1/src

#/bin/bash -c '. /opt/ros/noetic/setup.bash; catkin_init_workspace'

#git clone https://github.com/koide3/ndt_omp.git
#git clone https://github.com/SMRT-AIST/fast_gicp.git --recursive


# hdl-localization
 git clone https://github.com/koide3/ndt_omp
 git clone https://github.com/SMRT-AIST/fast_gicp --recursive
 git clone https://github.com/koide3/hdl_global_localization

cd $1

#/bin/bash -c '. /opt/ros/noetic/setup.bash; catkin_make'

sed -i "6i source \"/workspaces/hdl_slam_devcontainer/devel/setup.bash\"" /ros_entrypoint.sh

cd
echo 'source /opt/ros/noetic/setup.bash' >>/root/.bashrc
