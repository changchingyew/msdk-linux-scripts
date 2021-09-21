export DISPLAY=:0
#ninja -C builddir devenv
#export GST_DEBUG="qtdemux*:7,h264parse*:7,msdk*:7"
#export GST_DEBUG="avdec*:7"
#export GST_DEBUG="h264parse*:7,msdk*:7"
export GST_DEBUG="msdk*:7"

export GST_PLUGIN_SYSTEM_PATH=/media-usb/gstreamer/gst_root/
#unset GST_PLUGIN_SYSTEM_PATH

#_GST_BIN_PATH=/media-usb/gstreamer/gst-build/builddir/subprojects/gstreamer/tools
_GST_BIN_PATH=/media-usb/gstreamer/gst_root/bin
#_GST_BIN_PATH=/usr/bin

MEDIA_PATH=/media-nvme
#MEDIA_PATH=/media/H264_Videos

#MEDIA_FILE=Puppies_3840x2160_20mbps_60fps_High_at_L5.2.mp4
#MEDIA_FILE=Puppies_3840x2160_22mbps_30fps_High_at_L5.1.mp4
MEDIA_FILE=Puppies_3840x2160_20mbps_60fps_High_at_L5.2_short.mp4
#MEDIA_FILE=Puppies_3840x2160_22mbps_30fps_High_at_L5.1_short.mp4
#MEDIA_FILE=fail.h264
