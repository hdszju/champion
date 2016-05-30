#!/bin/bash


gnome-terminal -x bash -c " roslaunch cp_tasks fake_turtlebot.launch"

gnome-terminal -x bash -c " rosrun rviz rviz -d `rospack find cp_tasks`/nav_tasks.rviz"

gnome-terminal -x bash -c " roslaunch cp_vel cp_vel.launch"
