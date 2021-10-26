#!/bin/bash

SCRIPT_DIR="$( cd "$(dirname "${BASH_SOURCE[0]:-$0}")" >/dev/null 2>&1 ; pwd -P )"
. "${SCRIPT_DIR}/jenkinsonlake_env.sh" 

#H265

#Decode 1080p 32x
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode1.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode2.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode3.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode4.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode5.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode6.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode7.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode8.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode9.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode10.log &

${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode11.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode12.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode13.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode14.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode15.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode16.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode17.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode18.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode19.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode20.log &

${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode21.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode22.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode23.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode24.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode25.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode26.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode27.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode28.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode29.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode30.log &

${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode31.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit-vince.h265 -f null - 2> out/1080_decode32.log &

#Decode: 4K 6x.
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Bunny_3840x2160_15mbps_60fps_Main_at_L5.1-vince.265 -f null - 2> out/4K_decode1.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Bunny_3840x2160_15mbps_60fps_Main_at_L5.1-vince.265 -f null - 2> out/4K_decode2.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Bunny_3840x2160_15mbps_60fps_Main_at_L5.1-vince.265 -f null - 2> out/4K_decode3.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Bunny_3840x2160_15mbps_60fps_Main_at_L5.1-vince.265 -f null - 2> out/4K_decode4.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Bunny_3840x2160_15mbps_60fps_Main_at_L5.1-vince.265 -f null - 2> out/4K_decode5.log &
${FFMPEG_PATH}/ffmpeg -hwaccel qsv -c:v hevc_qsv -i ${MEDIA_PATH}/Bunny_3840x2160_15mbps_60fps_Main_at_L5.1-vince.265 -f null - 2> out/4K_decode6.log &




#Encode: 4K x4
${FFMPEG_PATH}/ffmpeg -stream_loop -1 -init_hw_device qsv=hw -filter_hw_device hw -f rawvideo -pix_fmt yuv420p -s:v 3840x2160 -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps.nv12 -vf hwupload=extra_hw_frames=64,format=qsv -c:v hevc_qsv -b:v 25M -maxrate 25M -f null - 2> out/4K_encode1.log &
${FFMPEG_PATH}/ffmpeg -stream_loop -1 -init_hw_device qsv=hw -filter_hw_device hw -f rawvideo -pix_fmt yuv420p -s:v 3840x2160 -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps.nv12 -vf hwupload=extra_hw_frames=64,format=qsv -c:v hevc_qsv -b:v 25M -maxrate 25M -f null - 2> out/4K_encode2.log &
${FFMPEG_PATH}/ffmpeg -stream_loop -1 -init_hw_device qsv=hw -filter_hw_device hw -f rawvideo -pix_fmt yuv420p -s:v 3840x2160 -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps.nv12 -vf hwupload=extra_hw_frames=64,format=qsv -c:v hevc_qsv -b:v 25M -maxrate 25M -f null - 2> out/4K_encode3.log &
${FFMPEG_PATH}/ffmpeg -stream_loop -1 -init_hw_device qsv=hw -filter_hw_device hw -f rawvideo -pix_fmt yuv420p -s:v 3840x2160 -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps.nv12 -vf hwupload=extra_hw_frames=64,format=qsv -c:v hevc_qsv -b:v 25M -maxrate 25M -f null - 2> out/4K_encode4.log &


#Encode: 1080p x4
${FFMPEG_PATH}/ffmpeg -stream_loop -1 -init_hw_device qsv=hw -filter_hw_device hw -f rawvideo -pix_fmt yuv420p -s:v 1920x1080 -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps.nv12 -vf hwupload=extra_hw_frames=64,format=qsv -c:v hevc_qsv -b:v 12M -maxrate 12M -f null - 2> out/1080_encode1.log &
${FFMPEG_PATH}/ffmpeg -stream_loop -1 -init_hw_device qsv=hw -filter_hw_device hw -f rawvideo -pix_fmt yuv420p -s:v 1920x1080 -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps.nv12 -vf hwupload=extra_hw_frames=64,format=qsv -c:v hevc_qsv -b:v 12M -maxrate 12M -f null - 2> out/1080_encode2.log &
${FFMPEG_PATH}/ffmpeg -stream_loop -1 -init_hw_device qsv=hw -filter_hw_device hw -f rawvideo -pix_fmt yuv420p -s:v 1920x1080 -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps.nv12 -vf hwupload=extra_hw_frames=64,format=qsv -c:v hevc_qsv -b:v 12M -maxrate 12M -f null - 2> out/1080_encode3.log &
${FFMPEG_PATH}/ffmpeg -stream_loop -1 -init_hw_device qsv=hw -filter_hw_device hw -f rawvideo -pix_fmt yuv420p -s:v 1920x1080 -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps.nv12 -vf hwupload=extra_hw_frames=64,format=qsv -c:v hevc_qsv -b:v 12M -maxrate 12M -f null - 2> out/1080_encode4.log &


#encode: 720p x1
${FFMPEG_PATH}/ffmpeg -stream_loop -1 -init_hw_device qsv=hw -filter_hw_device hw -f rawvideo -pix_fmt yuv420p -s:v 1280x720 -i ${MEDIA_PATH}/Cactus_1280x720_9mbps_60fps.nv12 -vf hwupload=extra_hw_frames=64,format=qsv -c:v hevc_qsv -b:v 10M -maxrate 10M -f null - 2> out/720_encode1.log &


########################################################################
# Note: Termination codes. 
sleep 3m
echo "Terminate App"
killall -2 ${FFMPEG_PATH}/ffmpeg

########################################################################
# Note: wait for ${FFMPEG_PATH}/ffmpeg process are killed. This to time overall ${FFMPEG_PATH}/ffmpeg
#       aggregate usage. 
#
#echo "going to wait"

#while true;
#do
    #NUM=`ps -aux | grep -i ${FFMPEG_PATH}/ffmpeg | wc -l`
    #if [ $NUM -eq 1 ];then
       #break;
    #fi
#done
#echo "wait done"
