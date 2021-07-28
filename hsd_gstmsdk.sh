set -x
#cd ~/gstreamer/gst-build
#ninja -C builddir devenv
#export GST_DEBUG_NO_COLOR=1
#export GST_DEBUG="5"
export GST_DEBUG="msdk*:7"
#export GST_DEBUG="GST_TRACER:7"
#export GST_TRACERS="leaks(check-refs=true)"
#export GST_TRACERS="leaks(stack-traces-flags=full,check-refs=true)"
#export GST_TRACERS="leaks(stack-traces-flags=fast,check-refs=true)"
#_GST_BIN_PATH=/home/root/gstreamer/gst-build/builddir/subprojects/gstreamer/tools
#_GST_BIN_PATH=/media2/gstreamer/gst-build/builddir/subprojects/gstreamer/tools
_GST_BIN_PATH=/usr/bin

#HSD 1509336191: Segfault when trying to encode/decode with multiple session 
#original - fail - built with msdk - negotiate
#ERROR: from element /GstPipeline:pipeline0/GstMsdkH264Dec:msdkh264dec1: Could not negotiate the stream
#0:00:00.328932543 [36m247739[00m 0x7fcda4002360 [31;01mERROR  [00m [00m             msdkdec gstmsdkdec.c:446:gst_msdkdec_init_decoder:<msdkh264dec1>[00m Init failed (device operation failure)
#0:00:00.328951921 [36m247739[00m 0x7fcda4002360 [31;01mERROR  [00m [00m             msdkdec gstmsdkdec.c:996:gst_msdkdec_negotiate:<msdkh264dec1>[00m Failed to re-negotiate
#original - fail - built with vpl - trace
#$_GST_BIN_PATH/gst-launch-1.0 filesrc location=/media/H264_Videos/HoneyBee_1920x1080_10mbps_30fps_Baseline_at_L4.2.mp4 ! qtdemux ! h264parse ! msdkh264dec ! fpsdisplaysink video-sink=glimagesink signal-fps-measurements=true text-overlay=false sync=false filesrc location=/media/H264_Videos/HoneyBee_1920x1080_10mbps_30fps_Baseline_at_L4.2.mp4 ! qtdemux ! h264parse ! msdkh264dec ! fpsdisplaysink video-sink=glimagesink signal-fps-measurements=true text-overlay=false sync=false
#fakesync - same failure
$_GST_BIN_PATH/gst-launch-1.0 filesrc location=/media/H264_Videos/HoneyBee_1920x1080_10mbps_30fps_Baseline_at_L4.2.mp4 ! qtdemux ! h264parse ! msdkh264dec ! fakesink filesrc location=/media/H264_Videos/HoneyBee_1920x1080_10mbps_30fps_Baseline_at_L4.2.mp4 ! qtdemux ! h264parse ! msdkh264dec ! fakesink
#fakesync with h265 - also fail at unmap
#$_GST_BIN_PATH/gst-launch-1.0 filesrc location= /media/H265_Videos/Demuxed_H265_Videos/Elecard2_1920x1080_4mbps_60fps_Baseline_at_L4.2.265 ! h265parse ! msdkh265dec ! fakesink filesrc location= /media/H265_Videos/Demuxed_H265_Videos/Elecard2_1920x1080_4mbps_60fps_Baseline_at_L4.2.265 ! h265parse ! msdkh265dec ! fakesink 
#$_GST_BIN_PATH/gst-launch-1.0 filesrc location=/media/H264_Videos/Demuxed_H264_Videos/HoneyBee_1920x1080_10mbps_30fps_Baseline_at_L4.2.h264 ! h264parse ! msdkh264dec ! fakesink filesrc location=/media/H264_Videos/Demuxed_H264_Videos/HoneyBee_1920x1080_10mbps_30fps_Baseline_at_L4.2.h264 ! h264parse ! msdkh264dec ! fakesink
#$_GST_BIN_PATH/gst-launch-1.0 filesrc location=/media/H264_Videos/Demuxed_H264_Videos/HoneyBee_1920x1080_10mbps_30fps_Baseline_at_L4.2.h264 ! h264parse ! msdkh264dec ! fakesink
#add msdkvpp - fail with trace
#$_GST_BIN_PATH/gst-launch-1.0 filesrc location=/media/H264_Videos/HoneyBee_1920x1080_10mbps_30fps_Baseline_at_L4.2.mp4 ! qtdemux ! h264parse ! msdkh264dec ! msdkvpp ! fpsdisplaysink video-sink=glimagesink signal-fps-measurements=true text-overlay=false sync=false filesrc location=/media/H264_Videos/HoneyBee_1920x1080_10mbps_30fps_Baseline_at_L4.2.mp4 ! qtdemux ! h264parse ! msdkh264dec ! msdkvpp ! fpsdisplaysink video-sink=glimagesink signal-fps-measurements=true text-overlay=false sync=false
#pass for msdk
#$_GST_BIN_PATH/gst-launch-1.0 filesrc location=/media/H264_Videos/HoneyBee_1920x1080_10mbps_30fps_Baseline_at_L4.2.mp4 ! qtdemux ! h264parse ! msdkh264dec ! msdkvpp ! glimagesink

#pass for msdk
#fail for vpl - same failure with trace
#$_GST_BIN_PATH/gst-launch-1.0 filesrc location=/media/H264_Videos/HoneyBee_1920x1080_10mbps_30fps_Baseline_at_L4.2.mp4 ! qtdemux ! h264parse ! msdkh264dec ! msdkvpp ! glimagesink filesrc location=/media/H264_Videos/HoneyBee_1920x1080_10mbps_30fps_Baseline_at_L4.2.mp4 ! qtdemux ! h264parse ! msdkh264dec ! msdkvpp ! glimagesink
#$_GST_BIN_PATH/gst-launch-1.0 filesrc location=/media/H264_Videos/Demuxed_H264_Videos/HoneyBee_1920x1080_10mbps_30fps_Baseline_at_L4.2.h264 ! h264parse ! msdkh264dec ! msdkvpp ! glimagesink filesrc location=/media/H264_Videos/Demuxed_H264_Videos/HoneyBee_1920x1080_10mbps_30fps_Baseline_at_L4.2.h264 ! h264parse ! msdkh264dec ! msdkvpp ! glimagesink
#fail for msdk
#$_GST_BIN_PATH/gst-launch-1.0 filesrc location=/media/H264_Videos/HoneyBee_1920x1080_10mbps_30fps_Baseline_at_L4.2.mp4 ! qtdemux ! h264parse ! msdkh264dec ! fakesink
#fail with negotiate
#$_GST_BIN_PATH/gst-launch-1.0 filesrc location=/media/H264_Videos/HoneyBee_1920x1080_10mbps_30fps_Baseline_at_L4.2.mp4 ! qtdemux ! h264parse ! msdkh264dec ! fpsdisplaysink video-sink=glimagesink signal-fps-measurements=true text-overlay=false sync=false
#pass
#$_GST_BIN_PATH/gst-launch-1.0 filesrc location=/media/H264_Videos/HoneyBee_1920x1080_10mbps_30fps_Baseline_at_L4.2.mp4 ! qtdemux ! h264parse ! msdkh264dec ! msdkvpp ! fpsdisplaysink video-sink=glimagesink signal-fps-measurements=true text-overlay=false sync=false
#$_GST_BIN_PATH/gst-launch-1.0 filesrc location=/media/H264_Videos/Skyfall_800x600_1.75mbps_30fps_Main@L3.1.mp4 ! qtdemux ! h264parse ! msdkh264dec ! msdkvpp ! glimagesink

#HSD 1509013599: Unsupported format for DMABuf
#original - built with msdk - fail
#original - built with vpl - same failure
#subprojects/gstreamer/gst/parse/grammar.y(540): gst_parse_no_more_pads (): /GstPipeline:pipeline0/GstMatroskaDemux:matroskademux0:
#failed delayed linking some pad of GstMatroskaDemux named matroskademux0 to some pad of GstH265Parse named h265parse0
#ERROR: from element /GstPipeline:pipeline0/GstMatroskaDemux:matroskademux0: Internal data stream error.
#$_GST_BIN_PATH/gst-launch-1.0 filesrc location= /media/H265_12bit_Videos/444/Elecard2_1920x1080_4mbps_60fps_Main_at_L4.1_12bit_444.mkv ! matroskademux ! h265parse ! msdkh265dec ! 'video/x-raw(memory:DMABuf)' ! glimagesink
#other file fail with same failure for dmabuf (pass for non dmabuf) for both msdk and vpl build
#$_GST_BIN_PATH/gst-launch-1.0 filesrc location=/media/H264_Videos/Skyfall_800x600_1.75mbps_30fps_Main@L3.1.mp4 ! qtdemux ! h264parse ! msdkh264dec ! 'video/x-raw(memory:DMABuf)' ! glimagesink
#pass
#$_GST_BIN_PATH/gst-launch-1.0 filesrc location= /media/H265_12bit_Videos/444/Elecard2_1920x1080_4mbps_60fps_Main_at_L4.1_12bit_444.mkv ! matroskademux ! h265parse ! msdkh265dec ! glimagesink
