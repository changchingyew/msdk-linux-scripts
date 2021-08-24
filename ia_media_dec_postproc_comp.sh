#!/bin/bash

SCRIPT_DIR="$( cd "$(dirname "${BASH_SOURCE[0]:-$0}")" >/dev/null 2>&1 ; pwd -P )"
. "${SCRIPT_DIR}/ia_media_env.sh" 

PAR_FILE_PATH=./msdk-linux-scripts/par_files
#PAR_FILE=incremental_decode_4_X.par
#PAR_FILE=decode_4_postproc_X.par
#PAR_FILE=decode_4_postproc_X2.par
PAR_FILE=dec_16_comp.par

${SAMPLE_PATH}/sample_multi_transcode -par ${PAR_FILE_PATH}/${PAR_FILE} 
