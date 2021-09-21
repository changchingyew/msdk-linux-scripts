#!/bin/bash
SCRIPT_DIR="$( cd "$(dirname "${BASH_SOURCE[0]:-$0}")" >/dev/null 2>&1 ; pwd -P )"
. "${SCRIPT_DIR}/gst_env.sh" 

#$_GST_BIN_PATH/gst-launch-1.0 filesrc location=/media/H264_Videos/Skyfall_800x600_1.75mbps_30fps_Main@L3.1.mp4 ! qtdemux ! h264parse ! msdkh264dec ! msdkvpp ! glimagesink
#$_GST_BIN_PATH/gst-launch-1.0 filesrc location=/media/H265_12bit_Videos/Demuxed_H265_12bit_Videos/Elecard2_1920x1080_4mbps_60fps_Main_at_L4.1_12bit.265 ! h265parse ! msdkh265dec ! msdkvpp ! fakesink
#$_GST_BIN_PATH/gst-launch-1.0 filesrc location=/media/H265_12bit_Videos/Demuxed_H265_12bit_Videos/Elecard2_1920x1080_4mbps_60fps_Main_at_L4.1_12bit.265 ! h265parse ! msdkh265dec ! fakesink

#$_GST_BIN_PATH/gst-launch-1.0 filesrc location=$MEDIA_PATH/$MEDIA_FILE ! qtdemux ! h264parse ! msdkh264dec ! msdkvpp ! glimagesink 
#$_GST_BIN_PATH/gst-launch-1.0 filesrc location=$MEDIA_PATH/$MEDIA_FILE ! qtdemux ! h264parse ! msdkh264dec ! fakesink 
$_GST_BIN_PATH/gst-launch-1.0 filesrc location=$MEDIA_PATH/$MEDIA_FILE ! h264parse ! msdkh264dec ! fakesink 
#$_GST_BIN_PATH/gst-launch-1.0 filesrc location=$MEDIA_PATH/$MEDIA_FILE ! qtdemux ! h264parse ! vaapih264dec ! fakesink 
#$_GST_BIN_PATH/gst-launch-1.0 filesrc location=$MEDIA_PATH/$MEDIA_FILE ! qtdemux ! h264parse ! avdec_h264 ! fakesink 
