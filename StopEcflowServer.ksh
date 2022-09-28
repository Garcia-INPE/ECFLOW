#!/bin/ksh

if [ -f ECF_PORT.txt ]; then
   export ECF_PORT=$(cat "ECF_PORT.txt")
else
   export ECF_PORT=3143
fi

cd logs

ecflow_client --group="halt=yes; check_pt; terminate=yes"

