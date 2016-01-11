#!/bin/bash

LOG=/home/hydro/logs/light.log
OUTLET=3
DEVICE=01:01:54:f1:07

echo "`date` - Light OFF" >> $LOG
sudo sispmctl -D $DEVICE -q -f $OUTLET
