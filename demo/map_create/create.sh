#!/bin/bash


gnome-terminal -x bash -c " rosbag play --clock mylaserdata.bag "
sleep 5s

gnome-terminal -x bash -c " rosrun rviz rviz"
sleep 5s
