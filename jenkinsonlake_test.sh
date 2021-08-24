#!/bin/bash

SCRIPT_DIR="$( cd "$(dirname "${BASH_SOURCE[0]:-$0}")" >/dev/null 2>&1 ; pwd -P )"
. "${SCRIPT_DIR}/jenkinsonlake_env.sh" 

cd ${MIPS_ROOT}/build/bin
./mips_ut --gtest_filter=TestFFmpegDecode.EndOfStream
