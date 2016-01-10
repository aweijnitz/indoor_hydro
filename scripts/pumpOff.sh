#!/bin/bash
LOG=/home/hydro/logs/pump.log
PUMPOUTLET=4

sudo sispmctl -D 01:01:54:f1:07 -q -f $PUMPOUTLET
