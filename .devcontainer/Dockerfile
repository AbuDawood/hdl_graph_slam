FROM ros:noetic

RUN apt-get -y update 
RUN apt-get -y install git

RUN apt-get update && apt-get install -y --no-install-recommends\
 &&   apt-get install -y --no-install-recommends \
        wget nano build-essential libomp-dev clang lld git ros-noetic-geodesy ros-noetic-pcl-ros ros-noetic-nmea-msgs \
        ros-noetic-rviz ros-noetic-tf-conversions ros-noetic-libg2o \
        libgtest-dev libboost-all-dev libopencv-dev \
        ros-noetic-tf2 ros-noetic-tf2-ros ros-noetic-tf2-geometry-msgs \
        ros-noetic-eigen-conversions \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*




ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]