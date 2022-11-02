echo 'source root/catkin_ws/devel/setup.bash' >> /root/.bashrc

source /root/catkin_ws/devel/setup.bash

catkin_make -DCMAKE_BUILD_TYPE=Release
