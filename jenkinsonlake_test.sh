#!/bin/bash

SCRIPT_DIR="$( cd "$(dirname "${BASH_SOURCE[0]:-$0}")" >/dev/null 2>&1 ; pwd -P )"
. "${SCRIPT_DIR}/jenkinsonlake_env.sh" 

/usr/bin/metrics_monitor &
sleep 1

cd ${MIPS_APP}/build/bin
#./mips_ut --gtest_filter=TestFFmpegDecode.EndOfStream
#./mips_ut --gtest_filter=TestFFmpegDecode.EndOfStreamHevc
#./mips_ut --gtest_filter=TestFFmpegOutput.EndOfStream
#./mips_ut --gtest_filter=TestFFmpegOutput.EndOfStreamHevc
./mips_ut --gtest_filter=TestFFmpegFilter.ColorConvOutputHevc
