#!/binsh

#Install ROS
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net --recv-key 0xB01FA116

sudo apt-get update

sudo apt-get install ros-indigo-desktop-full

sudo rosdep init
rosdep update

echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
source ~/.bashrc

sudo apt-get install python-rosinstall

# Install the prerequisites for the champion patrol projects

sudo apt-get install ros-indigo-arbotix ros-indigo-openni-camera \
ros-indigo-dynamixel-motor ros-indigo-rosbridge-suite \
ros-indigo-mjpeg-server ros-indigo-rgbd-launch \
ros-indigo-moveit-full ros-indigo-moveit-ikfast \
ros-indigo-turtlebot-* ros-indigo-kobuki-* ros-indigo-moveit-python \
python-pygraph python-pygraphviz python-easygui \
mini-httpd ros-indigo-laser-pipeline ros-indigo-ar-track-alvar \
ros-indigo-laser-filters ros-indigo-hokuyo-node \
ros-indigo-depthimage-to-laserscan \
ros-indigo-gazebo-ros ros-indigo-gazebo-ros-pkgs \
ros-indigo-gazebo-msgs ros-indigo-gazebo-plugins \
ros-indigo-gazebo-ros-control ros-indigo-cmake-modules \
ros-indigo-kobuki-gazebo-plugins ros-indigo-kobuki-gazebo \
ros-indigo-smach ros-indigo-smach-ros ros-indigo-grasping-msgs \
ros-indigo-executive-smach ros-indigo-smach-viewer \
ros-indigo-robot-pose-publisher ros-indigo-tf2-web-republisher \
ros-indigo-move-base-msgs ros-indigo-fake-localization \
graphviz-dev libgraphviz-dev gv python-scipy liburdfdom-tools \
ros-indigo-laptop-battery-monitor ros-indigo-ar-track-alvar* \
ros-indigo-map-server ros-indigo-move-base* \
ros-indigo-simple-grasping
