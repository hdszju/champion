#!/bin/bash
rm -rf mylaserdata.bag

gnome-terminal -x bash -c " roslaunch pr2_gazebo pr2_wg_world.launch"
sleep 15s

gnome-terminal -x bash -c " rosparam set use_sim_time true;\
                            rosrun gmapping slam_gmapping \
                            _delta:=0.05  \
                            _xmin:=-15.0  \
                            _xmax:=15.0 \
                            _ymin:=-15.0 \
                            _ymax:=15.0 \
                            scan:=base_scan _odom_frame:=odom_combined"
sleep 5s


gnome-terminal -x bash -c " roslaunch pr2_teleop teleop_keyboard.launch"
sleep 5s

rosbag record -O mylaserdata /base_scan /tf
