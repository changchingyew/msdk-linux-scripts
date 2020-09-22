#!/bin/bash
set -x
export SAFESTR_HOME=$PWD/../../safestringlib
export CMAKE_PREFIX_PATH=$PWD/../../xlink/
export HDDLUNITE=1

echo "Running $0 $1"
if [ "$1" == "kmb" ]; then
	cmake ..  -DUSE_HANTRO_DRIVER=KMB -DTARGETS=IA -DDEBUG=ON
elif [ "$1" == "tbh" ]; then
	cmake ..  -DUSE_HANTRO_DRIVER=TBH -DTARGETS=IA -DDEBUG=ON
else
	cmake ..  -DUSE_HANTRO_DRIVER=ON -DTARGETS=IA -DDEBUG=ON
fi
make VERBOSE=1 -j$(nproc)
