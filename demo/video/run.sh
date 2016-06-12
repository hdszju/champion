#!/bin/bash

sudo apt-get install apache2

sudo rm -rf /var/www/html/js_video/
sudo rm -rf /var/www/html/streamer.html

sudo cp -a ./js_video /var/www/html/
sudo cp -a ./streamer.html /var/www/html/

rosrun mjpeg_server mjpeg_server
#rosrun mjpeg_server mjpeg_server _port:=8181

sudo service apache2 restart
