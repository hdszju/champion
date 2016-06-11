#!/bin/bash
pwd=$(pwd)

echo "export ROS_PACKAGE_PATH=$pwd:$ROS_PACKAGE_PATH" >> ~/.bashrc
echo "source $pwd/devel/setup.bash" >> ~/.bashrc
