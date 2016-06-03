#!/bin/bash


gnome-terminal -x bash -c " roslaunch cp_tasks fake_turtlebot.launch"
sleep 5s
gnome-terminal -x bash -c " rosrun rviz rviz -d `rospack find cp_tasks`/nav_tasks.rviz"
sleep 5s
gnome-terminal -x bash -c " rosrun cp_tasks patrol_script.py"
sleep 5s
gnome-terminal -x bash -c " roslaunch cp_vel cp_vel.launch"
