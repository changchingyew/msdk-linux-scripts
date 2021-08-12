#!/bin/bash
set -x
#MEDIA=/media-usb/Puppies_3840x2160_20mbps_60fps_High_at_L5.2.h264
MEDIA=/media-nvme/Puppies_1920x1080_38mbps_30fps_Main_at_L4.1.265

OUTPUT="-vf hwdownload,format=nv12 -pix_fmt yuv420p -y out.yuv"
#OUTPUT="-f null -"

#CODEC=h264_qsv
CODEC=hevc_qsv
#CODEC=VP9_qsv

./ffmpeg -hwaccel qsv -c:v ${CODEC} -i ${MEDIA} ${OUTPUT}
