#!/bin/bash

set -x
export SAFESTR_HOME=../../safestringlib

if [ "$1" == "kmb" ]; then
	cmake ..  -DTARGETS=KMB -DSVE_HOOK=ON
	make -j$(nproc)
elif [ "$1" == "tbh" ]; then
	cmake ..  -DTARGETS=TBH -DSVE_HOOK=ON
	make -j$(nproc)
else
	echo "Usage: $0 kmb/tbh"
fi
