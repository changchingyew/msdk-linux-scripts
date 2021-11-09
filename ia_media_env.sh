#!/bin/bash
set -x

DISPLAY=:0
#export LD_LIBRARY_PATH=$SAMPLE_PATH

SAMPLE_PATH=/media-usb/oneVPL/_build
#SAMPLE_PATH=/media-usb/MediaSDK/build/__bin/Debug
#SAMPLE_PATH=/usr/lib64/mfx/samples
#SAMPLE_PATH=/usr/share/oneVPL/samples
#SAMPLE_PATH=/usr/bin
#SAMPLE_PATH=/media-usb/rpm/tmp/usr/bin
#SAMPLE_PATH=/home/root/vpl_root/bin
#SAMPLE_PATH=/media-usb/gfx_workspace/build/__bin/Debug
#SAMPLE_PATH=/media-usb/rpm/sfc_ww46/usr/share/oneVPL/samples/
#SAMPLE_PATH=/media-usb/rpm/wayland_dmabuf/usr/share/oneVPL/samples/

#MEDIA_PATH=/media-usb
#MEDIA_PATH=/media/RAWS/
MEDIA_PATH=/media-nvme
#MEDIA_PATH=/media

#MEDIA=Puppies_3840x2160_20mbps_60fps_High_at_L5.2_short.mp4

MEDIA=Puppies_3840x2160_22mbps_30fps_High_at_L5.1.h264
#MEDIA=Puppies_3840x2160_22mbps_30fps_High_at_L5.1_short.h264

#MEDIA=Puppies_1920x1080_38mbps_30fps_Main_at_L4.1.265
#MEDIA=Puppies_3840x2160_10mbps_60fps_Main_at_L5.1.265
#MEDIA=Coastguard_7680x4320_3mbps_60fps_Main_at_L6.1.265

#MEDIA=Foreman_3840x2160_12mbps_60fps.ivf
#MEDIA=vp9-7680x4320-video.ivf

#MEDIA=H264_Videos/Demuxed_H264_Videos/Puppies_1920x1080_40mbps_30fps_Main_at_L4.1.h264
#MEDIA=H265_Videos/Demuxed_H265_Videos/Coastguard_640x320_1mbps_30fps_Main_at_L2.1.h265
#MEDIA=H265_12bit_Videos/Demuxed_H265_12bit_Videos/Elecard2_1920x1080_4mbps_60fps_Main_at_L4.1_12bit.265
#MEDIA=VP9_Videos/Demuxed_VP9_Videos/444/Puppies_1280x720_5mbps_60fps_444.ivf
#MEDIA=AV1_Videos/Demuxed_AV1_Videos/Canal_640x320_2mbps_60fps_Main_at_L3.ivf -o /tmp/canal_640x320_av1.yuv

CODEC=h264
#CODEC=h265
#CODEC=vp9
#CODEC=av1

#RESOLUTION="-w 304 -h 304"
#RESOLUTION="-w 256 -h 256"
#RESOLUTION="-w 512 -h 512"
#RESOLUTION="-w 960 -h 540"
#RESOLUTION="-w 1200 -h 1200"
#RESOLUTION="-w 2400 -h 2400"

#RESOLUTION="-w 1920 -h 1080"
RESOLUTION="-w 3840 -h 2160"
#RESOLUTION="-w 7680 -h 4320"
