#!/bin/bash
set -x
export SAFESTR_HOME=$PWD/../../safestringlib
export CMAKE_PREFIX_PATH=$PWD/../../xlink/
export HDDLUNITE=1

if [ "$1" == "kmb" ]; then
	cmake ..  -DUSE_HANTRO_DRIVER=KMB -DTARGETS=IA -DDEBUG=ON
	make VERBOSE=1 -j$(nproc)
elif [ "$1" == "tbh" ]; then
	cmake ..  -DUSE_HANTRO_DRIVER=TBH -DTARGETS=IA -DDEBUG=ON
	make VERBOSE=1 -j$(nproc)
else
	echo "Usage: $0 kmb/tbh"
fi
