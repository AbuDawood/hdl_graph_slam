FROM ros:noetic

RUN apt-get update && apt-get install -y --no-install-recommends \
  && apt-get install -y --no-install-recommends \
  wget nano build-essential libomp-dev clang lld git\
  ros-noetic-geodesy ros-noetic-pcl-ros ros-noetic-nmea-msgs \
  ros-noetic-rviz ros-noetic-tf-conversions ros-noetic-libg2o \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /workspaces/hdl_slam_devcontainer/src
WORKDIR /workspaces/hdl_slam_devcontainer/src
RUN /bin/bash -c '. /opt/ros/noetic/setup.bash; catkin_init_workspace'
RUN git clone https://github.com/koide3/ndt_omp.git
RUN git clone https://github.com/SMRT-AIST/fast_gicp.git --recursive

COPY /.devcontainer /workspaces/hdl_slam_devcontainer/.devcontainer
COPY /.vscode /workspaces/hdl_slam_devcontainer/.vscode
COPY /.github /workspaces/hdl_slam_devcontainer/.github
COPY /.gitignore /workspaces/hdl_slam_devcontainer/.gitignore
COPY /scripts /workspaces/hdl_slam_devcontainer/scripts

WORKDIR /workspaces/hdl_slam_devcontainer
RUN /bin/bash -c '. /opt/ros/noetic/setup.bash; catkin_make'
RUN sed -i "6i source \"/workspaces/hdl_slam_devcontainer/devel/setup.bash\"" /ros_entrypoint.sh

WORKDIR /

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]