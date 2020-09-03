#!/bin/bash
set -x
export SAFESTR_HOME=$PWD/../../safestringlib
export CMAKE_PREFIX_PATH=$PWD/../../xlink/
export HDDLUNITE=1

cmake ..  -DUSE_HANTRO_DRIVER=ON -DTARGETS=IA -DDEBUG=ON
#cmake ..  -DUSE_HANTRO_DRIVER=ON -DTARGETS=IA
make VERBOSE=1 -j$(nproc)
