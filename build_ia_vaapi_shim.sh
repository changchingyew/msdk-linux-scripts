#!/bin/bash
set -x
export SAFESTR_HOME=$PWD/../../safestringlib
export HDDLUNITE=1
if [ "$1" == "tbh" ]; then
    _CMAKE_OPTS=-DSECURE_XLINK=ON
else
    _CMAKE_OPTS=
fi

#_CMAKE_OPTS="-DDEBUG=ON "$_CMAKE_OPTS

echo "Running $0 $1"
if [ "$1" == "kmb" ]; then
	_CMAKE_OPTS="-DUSE_HANTRO_DRIVER=KMB "$_CMAKE_OPTS
elif [ "$1" == "tbh" ]; then
	_CMAKE_OPTS="-DUSE_HANTRO_DRIVER=TBH "$_CMAKE_OPTS
else
	_CMAKE_OPTS="-DUSE_HANTRO_DRIVER=ON "$_CMAKE_OPTS
fi
cmake .. -DTARGETS=IA $_CMAKE_OPTS
make VERBOSE=1 -j$(nproc)
