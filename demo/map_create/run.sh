#!/bin/bash
gnome-terminal -x bash -c " roslaunch pr2_gazebo pr2_wg_world.launch"
sleep 15s

gnome-terminal -x bash -c " rosparam set use_sim_time true;\
                            rosrun gmapping slam_gmapping \
                            xmin=-15.0  \
                            xmax=15.0 \
                            ymin=-15.0 \
                            ymax=15.0 \
                            scan:=base_scan _odom_frame:=odom_combined"
sleep 5s


gnome-terminal -x bash -c " roslaunch pr2_teleop teleop_keyboard.launch"
sleep 5s

rosbag record -O mylaserdata /base_scan /tf
