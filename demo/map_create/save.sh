#!/bin/bash

rm -rf mylaserdata.bag
rm -rf map.yaml
rm -rf map.pgm

rosrun map_server map_saver -f map

rosrun map_server map_server map.yaml
