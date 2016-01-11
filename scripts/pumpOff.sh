#!/bin/bash

LOG=/home/hydro/logs/pump.log
PUMPOUTLET=4
DEVICE=01:01:54:f1:07

sudo sispmctl -D $DEVICE -q -f $PUMPOUTLET
