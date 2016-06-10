#!/bin/bash

rosrun map_server map_saver -f map

rosrun map_server map_server map.yaml
