#!/bin/bash
set -x
export SAFESTR_HOME=$PWD/../../safestringlib
cmake ..  -DUSE_HANTRO_DRIVER=ON -DTARGETS=IA -DDEBUG=ON
make VERBOSE=1 -j$(nproc)
