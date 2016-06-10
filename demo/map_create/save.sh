#!/binsh

rosrun map_server map_saver -f mymap.pgm

rosrun map_server map_server map.yaml
