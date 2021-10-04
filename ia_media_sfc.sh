#!/bin/bash

SCRIPT_DIR="$( cd "$(dirname "${BASH_SOURCE[0]:-$0}")" >/dev/null 2>&1 ; pwd -P )"
. "${SCRIPT_DIR}/ia_media_env.sh" 

OPS=vdsfc
#OPS=vpp

CSC=-rgb4
#CSC=-bgr4

#OUTPUT="-o /tmp/${MEDIA}.vdsfc.rgb"
#OUTPUT="-o /tmp/${MEDIA}.vpp.rgb"
#OUTPUT="-o /dev/null"
OUTPUT="-r"

if [ $OPS == "vdsfc" ]
then
	OPS_OUTPUT="-dec_postproc force ${OUTPUT}"
else
	OPS_OUTPUT="${OUTPUT}"
fi

#/usr/bin/metrics_monitor &
#sleep 1
#${SAMPLE_PATH}/sample_decode ${CODEC} -hw -vaapi -api2x_dispatcher -i ${MEDIA_PATH}/${MEDIA} ${CSC} ${RESOLUTION} ${OPS_OUTPUT} -n 5
#${SAMPLE_PATH}/sample_decode ${CODEC} -hw -vaapi -api2x_dispatcher -i ${MEDIA_PATH}/${MEDIA} ${CSC} ${RESOLUTION} ${OPS_OUTPUT}
#${SAMPLE_PATH}/sample_decode ${CODEC} -hw -vaapi -i ${MEDIA_PATH}/${MEDIA} ${CSC} ${RESOLUTION} ${OPS_OUTPUT}
${SAMPLE_PATH}/sample_decode ${CODEC} -hw -vaapi -i ${MEDIA_PATH}/${MEDIA} ${CSC} ${RESOLUTION} -dec_postproc force -r
#${SAMPLE_PATH}/sample_decode ${CODEC} -hw -vaapi -scaling_mode lowpower -r -i ${MEDIA_PATH}/${MEDIA} ${CSC} ${RESOLUTION}
#${SAMPLE_PATH}/sample_decode ${CODEC} -hw -vaapi -scaling_mode lowpower -dec_postproc force -r -i ${MEDIA_PATH}/${MEDIA} ${CSC} ${RESOLUTION}
#sleep 1
#pkill metrics_monitor
