#!/binsh
sudo apt-get install ros-indigo-rosbridge-suite

sudo apt-get install apache2

sudo rm -rf /var/www/html/js_nav2d/
sudo rm -rf /var/www/html/nav2d.html

sudo cp -a ./js_nav2d /var/www/html/
sudo cp -a ./nav2d.html /var/www/html/

roslaunch pr2_gazebo pr2_wg_world.launch
export ROBOT=sim
#rosrun map_server map_server /opt/ros/groovy/stacks/wg_common/willow_maps/willow-sans-whitelab-2010-02-18-0.025.pgm 0.025
roslaunch pr2_2dnav pr2_2dnav.launch

roslaunch pr2_tuckarm tuck_arms.launch
rosrun robot_pose_publisher robot_pose_publisher
roslaunch rosbridge_server rosbridge_websocket.launch
sudo service apache2 restart
