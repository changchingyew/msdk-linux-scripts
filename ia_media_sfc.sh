#!/bin/bash

SCRIPT_DIR="$( cd "$(dirname "${BASH_SOURCE[0]:-$0}")" >/dev/null 2>&1 ; pwd -P )"
. "${SCRIPT_DIR}/ia_media_env.sh" 

OPS=vdsfc
#OPS=vpp

CSC=-rgb4
#CSC=-bgr4

#OUTPUT="-o /tmp/${MEDIA}.vdsfc.rgb"
#OUTPUT="-o /tmp/${MEDIA}.vpp.rgb"
OUTPUT="-o /tmp/out.yuv"
#OUTPUT="-o /dev/null"
#OUTPUT="-r"

#MFX_PLAYER_SFC_OPTION="-sfc_in 0 0 1920 1080 -sfc_out 1920 1080 0 0 1920 1080 rgb32"
MFX_PLAYER_SFC_OPTION="-sfc_in 0 0 3840 2160 -sfc_out 3840 2160 0 0 3840 2160 rgb32"

if [ $OPS == "vdsfc" ]
then
	OPS_OUTPUT="-dec_postproc force ${OUTPUT}"
else
	OPS_OUTPUT="${OUTPUT}"
fi

#/usr/bin/metrics_monitor &
#sleep 2

#for n in `seq 1 8`
#do
	#${SAMPLE_PATH}/sample_decode ${CODEC} -hw -vaapi -api2x_dispatcher -i ${MEDIA_PATH}/${MEDIA} ${CSC} ${RESOLUTION} ${OPS_OUTPUT} -n 5
	#${SAMPLE_PATH}/sample_decode ${CODEC} -hw -vaapi -api2x_dispatcher -i ${MEDIA_PATH}/${MEDIA} ${CSC} ${RESOLUTION} ${OPS_OUTPUT}
	${SAMPLE_PATH}/sample_decode ${CODEC} -hw -vaapi -i ${MEDIA_PATH}/${MEDIA} ${CSC} ${RESOLUTION} ${RESOLUTION} ${OPS_OUTPUT}
	#${SAMPLE_PATH}/sample_decode ${CODEC} -hw -vaapi -scaling_mode lowpower -r -i ${MEDIA_PATH}/${MEDIA} ${CSC} ${RESOLUTION} &
	#${SAMPLE_PATH}/sample_decode ${CODEC} -hw -vaapi -scaling_mode lowpower -dec_postproc force -r -i ${MEDIA_PATH}/${MEDIA} ${CSC} ${RESOLUTION} &

        #${SAMPLE_PATH}/mfx_player -i:${CODEC} ${MEDIA_PATH}/${MEDIA} ${OUTPUT} -hw -sfc_in 0 0 1920 1080 -sfc_out 1920 1080 0 0 1920 1080 rgb32
        #${SAMPLE_PATH}/mfx_player -i:${CODEC} ${MEDIA_PATH}/${MEDIA} ${OUTPUT} -hw ${MFX_PLAYER_SFC_OPTION}
#done

#sleep 30
#pkill metrics_monitor
