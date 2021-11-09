#!/bin/bash

SCRIPT_DIR="$( cd "$(dirname "${BASH_SOURCE[0]:-$0}")" >/dev/null 2>&1 ; pwd -P )"
. "${SCRIPT_DIR}/jenkinsonlake_env.sh" 

#DEBUG="-loglevel debug"
DEBUG="-loglevel verbose"

#MEDIA=/media-usb/Puppies_3840x2160_20mbps_60fps_High_at_L5.2.h264
MEDIA=/media-nvme/Puppies_1920x1080_38mbps_30fps_Main_at_L4.1.265
#MEDIA=/media-nvme/Puppies_3840x2160_20mbps_60fps_High_at_L5.2_short.mp4
#MEDIA=/media-usb/MIPS/content/FPS_test_1080p60_L4.2_100frames.mkv

# INPUT="-in_cropx 0 -in_cropy 0 -in_cropw 1920 -in_croph 1080 -out_w 1920 -out_h 1080 -out_cropx 0 -out_cropy 0 -out_cropw 1920 -out_croph 1080 -out_format rgb"
INPUT="-in_cropx 0 -in_cropy 0 -in_cropw 1920 -in_croph 1080 -out_w 1920 -out_h 1080 -out_cropx 0 -out_cropy 0 -out_cropw 1920 -out_croph 1080 -out_format 28"

#OUTPUT="-vf hwdownload,format=nv12 -pix_fmt yuv420p -vframes 10 -y out.yuv"
#OUTPUT="-vf hwdownload,format=nv12 -pix_fmt yuv420p -f sdl -"
#OUTPUT=${OUTPUT}" -vf hwdownload,format=nv12 -pix_fmt yuv420p -f sdl -"
#OUTPUT="-f null -"
OUTPUT=${OUTPUT}" -f null -"

#CODEC=h264_qsv
CODEC=hevc_qsv
#CODEC=VP9_qsv

${FFMPEG_PATH}/ffmpeg_g -hwaccel qsv -c:v ${CODEC} ${DEBUG} ${INPUT} -i ${MEDIA} ${OUTPUT}
#${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v ${CODEC} ${OUTPUT} -i ${MEDIA} ${DEBUG} 
#${FFMPEG_PATH}/ffplay -vcodec ${CODEC} -i ${MEDIA} ${DEBUG} ${OUTPUT}
