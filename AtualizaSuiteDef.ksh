#!/bin/ksh

if [ $# -ne 1 ] 
then
   echo ""
   echo "${0} [SUITE root name]"
   echo ""
   exit
fi

suite=${1}

if [ -f ECF_PORT.txt ]; then
   export ECF_PORT=$(cat "ECF_PORT.txt")
else
   export ECF_PORT=3143
fi

#ecflow_client --delete /${suite}
#ecflow_client --load=${suite}.def
ecflow_client --replace=/${suite} ${suite}.def
ecflow_client --begin=${suite}

echo "${suite} atualizada em PORT ${ECF_PORT}"
echo ""

