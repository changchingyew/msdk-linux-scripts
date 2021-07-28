#!/bin/bash
set -x

DISPLAY=:0
SAMPLE_PATH=/media2/oneVPL/_build
#SAMPLE_PATH=/media2/MediaSDK/build/__bin/release
#SAMPLE_PATH=/usr/lib64/mfx/samples
#SAMPLE_PATH=/usr/bin
export LD_LIBRARY_PATH=$SAMPLE_PATH

MEDIA_PATH=/media2
#MEDIA=Puppies_3840x2160_20mbps_60fps_High_at_L5.2.h264
#MEDIA=Puppies_3840x2160_20mbps_30fps_High_at_L5.0.265
#MEDIA=Foreman_3840x2160_12mbps_60fps.ivf

#MEDIA=Coastguard_7680x4320_3mbps_60fps_Main_at_L6.1.265
MEDIA=vp9-7680x4320-video.ivf

#CODEC=h264
#CODEC=h265
CODEC=vp9

#RESOLUTION="-w 3840 -h 2160"
RESOLUTION="-w 7680 -h 4320"

OPS=vdsfc
#OPS=vpp

CSC=-rgb4
#CSC=-bgr4

#OUTPUT="/tmp/${MEDIA}.vdsfc.rgb"
#OUTPUT="/tmp/${MEDIA}.vpp.rgb"
OUTPUT="/dev/null"

if [ $OPS == "vdsfc" ]
then
	OPS_OUTPUT="-dec_postproc force -o ${OUTPUT}"
else
	OPS_OUTPUT="-o ${OUTPUT}"
fi

${SAMPLE_PATH}/sample_decode ${CODEC} -hw -vaapi -i ${MEDIA_PATH}/${MEDIA} ${CSC} ${RESOLUTION} ${OPS_OUTPUT}
