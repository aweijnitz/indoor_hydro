#!/bin/bash

LOG=/home/hydro/logs/light.log
OUTLET=3
DEVICE=01:01:54:f1:07

echo "`date` - Light ON" >> $LOG
sudo sispmctl -D $DEVICE -q -o $OUTLET
