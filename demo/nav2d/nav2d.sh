#!/bin/bash
sudo apt-get install ros-indigo-rosbridge-suite

sudo apt-get install apache2

sudo rm -rf /var/www/html/js_nav2d/
sudo rm -rf /var/www/html/nav2d.html

sudo cp -a ./js_nav2d /var/www/html/
sudo cp -a ./nav2d.html /var/www/html/



#source ../../devel/setup.bash

gnome-terminal -x bash -c " export ROBOT=sim;rosparam set use_sim_time true; roslaunch cp_vel pr2_2dnav.launch"
sleep 5s

gnome-terminal -x bash -c " roslaunch pr2_tuckarm tuck_arms.launch"
sleep 5s


gnome-terminal -x bash -c " rosrun robot_pose_publisher robot_pose_publisher"
sleep 5s


gnome-terminal -x bash -c " roslaunch rosbridge_server rosbridge_websocket.launch"
sleep 5s

#rosrun map_server map_server /opt/ros/groovy/stacks/wg_common/willow_maps/willow-sans-whitelab-2010-02-18-0.025.pgm 0.025





sudo service apache2 restart
