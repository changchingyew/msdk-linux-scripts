#!/bin/bash
set -x

DISPLAY=:0
SAMPLE_PATH=/media2/oneVPL/_build
#SAMPLE_PATH=/media2/MediaSDK/build/__bin/release
#SAMPLE_PATH=/usr/lib64/mfx/samples
#SAMPLE_PATH=/usr/bin
#export LD_LIBRARY_PATH=$SAMPLE_PATH

PAR_FILE_PATH=~/msdk-linux-scripts/par_files
#PAR_FILE=incremental_decode_4_X.par
#PAR_FILE=decode_4_postproc_X.par
PAR_FILE=decode_4_postproc_X2.par

${SAMPLE_PATH}/sample_multi_transcode -par ${PAR_FILE_PATH}/${PAR_FILE} 
