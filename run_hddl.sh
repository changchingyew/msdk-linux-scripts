#!/bin/bash

source $PWD/run_env.sh

export CONFIG_PATH=$PWD/connection_unite.cfg

rm -rf /var/tmp
mkdir -p /var/tmp

if [ "$1" == "kmb" ]; then
	export _LAST_SLICE=0
elif [ "$1" == "tbh" ]; then
	export _LAST_SLICE=3
else
	echo "Usage: $0 kmb/tbh"
fi


for i in `seq 0 $_LAST_SLICE`;
do
	hddl_device_service $i &
done

sleep 10

/home/root/vaapi_bypass/build_kmb/hddl_bypass_shim unite
