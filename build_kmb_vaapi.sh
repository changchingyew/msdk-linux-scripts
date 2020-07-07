#!/bin/bash

#source /usr/local/oecore-x86_64/environment-setup-aarch64-ese-linux
export SAFESTR_HOME=../../safestringlib

cmake ..  -DTARGETS=KMB -DDEBUG=ON -DSVE_HOOK=ON
make -j$(nproc)
