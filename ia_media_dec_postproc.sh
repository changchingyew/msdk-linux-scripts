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

${SAMPLE_PATH}/sample_decode ${CODEC} -hw -vaapi -i ${MEDIA_PATH}/${MEDIA} ${CSC} ${RESOLUTION} ${OPS_OUTPUT}
