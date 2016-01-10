#!/bin/bash

SCRIPTBASE=/home/hydro/bin
. $SCRIPTBASE/pumpOn.sh
at now + 1 minutes -f $SCRIPTBASE/pumpOff.sh
