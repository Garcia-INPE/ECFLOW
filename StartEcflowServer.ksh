#!/bin/ksh

if [ -f ECF_PORT.txt ]; then
   export ECF_PORT=$(cat "ECF_PORT.txt")
else
   export ECF_PORT=3143
fi

cd logs

ecflow_server --port=${ECF_PORT} &

echo "ECFLOW server iniciado em PORT ${ECF_PORT}"


