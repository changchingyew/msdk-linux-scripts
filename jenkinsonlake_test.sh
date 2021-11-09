#!/bin/bash

SCRIPT_DIR="$( cd "$(dirname "${BASH_SOURCE[0]:-$0}")" >/dev/null 2>&1 ; pwd -P )"
. "${SCRIPT_DIR}/jenkinsonlake_env.sh" 

#/usr/bin/metrics_monitor &
#sleep 1

cd ${MIPS_APP}/build/bin
#./mips_ut --gtest_filter=TestFFmpegDecode.EndOfStream
#./mips_ut --gtest_filter=TestFFmpegDecode.EndOfStreamHevc
#unset STREAM_FILE
#./mips_ut --gtest_filter=TestFFmpegOutput.EndOfStream
#export STREAM_FILE=Puppies_1920x1080_38mbps_30fps_Main_at_L4.1.mkv
./mips_ut --gtest_filter=TestFFmpegOutput.EndOfStreamSfcHevc
#./mips_ut --gtest_filter=TestFFmpegOutput.EndOfStreamSfcAvc
#./mips_ut --gtest_filter=TestFFmpegFilter.ColorConvOutputHevc

#sleep 1
#pkill metrics_monitor
