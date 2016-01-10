#!/bin/bash
LOG=/home/hydro/logs/light.log
OUTLET=3

echo "`date` - Light ON" >> $LOG
sudo sispmctl -D 01:01:54:f1:07 -q -o $OUTLET
