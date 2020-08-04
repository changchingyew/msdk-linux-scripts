#!/bin/bash

set -x
export SAFESTR_HOME=../../safestringlib

#cmake ..  -DTARGETS=KMB -DDEBUG=ON -DSVE_HOOK=ON
cmake ..  -DTARGETS=KMB -DSVE_HOOK=ON
make -j$(nproc)
