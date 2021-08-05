export DISPLAY=:0
gst-launch-1.0 filesrc location=/media/H264_Videos/Skyfall_800x600_1.75mbps_30fps_Main@L3.1.mp4 ! qtdemux ! h264parse ! msdkh264dec ! msdkvpp ! glimagesink
