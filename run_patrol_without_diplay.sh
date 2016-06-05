#!/bin/bash

source ./devel/setup.bash

roslaunch cp_tasks fake_turtlebot.launch &
sleep 5s
#rosrun rviz rviz -d `rospack find cp_tasks`/nav_tasks.rviz"
sleep 5s
rosrun cp_tasks patrol_script.py &
sleep 5s
roslaunch cp_vel cp_vel.launch &
