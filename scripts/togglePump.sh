#!/bin/bash

# Note: Requires the at command to be present
#
# sudo apt-get update
# sudo apt-get install at

SCRIPTBASE=/home/hydro/bin

. $SCRIPTBASE/pumpOn.sh
at now + 1 minutes -f $SCRIPTBASE/pumpOff.sh
