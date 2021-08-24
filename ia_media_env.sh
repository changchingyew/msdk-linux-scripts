#!/bin/bash
set -x

DISPLAY=:0
#export LD_LIBRARY_PATH=$SAMPLE_PATH

SAMPLE_PATH=/media-usb/oneVPL/_build
#SAMPLE_PATH=/media-usb/MediaSDK/build/__bin/release
#SAMPLE_PATH=/usr/lib64/mfx/samples
#SAMPLE_PATH=/usr/bin
#SAMPLE_PATH=/media-usb/rpm/tmp/usr/bin
#SAMPLE_PATH=/home/root/vpl_root/bin

#MEDIA_PATH=/media-usb
#MEDIA_PATH=/media/RAWS/
MEDIA_PATH=/media-nvme

#MEDIA=Puppies_3840x2160_20mbps_60fps_High_at_L5.2.h264
#MEDIA=Puppies_1920x1080_38mbps_30fps_Main_at_L4.1.265
#MEDIA=Puppies_3840x2160_6mbps_60fps_Main_at_L5.1_12bit.265
MEDIA=Puppies_1920x1080_38mbps_30fps_Main_at_L4.1.265
#MEDIA=Coastguard_7680x4320_3mbps_60fps_Main_at_L6.1.265
#MEDIA=Foreman_3840x2160_12mbps_60fps.ivf
#MEDIA=vp9-7680x4320-video.ivf

#MEDIA=media/H265_Videos/Demuxed_H265_Videos/Coastguard_640x320_1mbps_30fps_Main_at_L2.1.h265
#MEDIA=media/H265_12bit_Videos/Demuxed_H265_12bit_Videos/Elecard2_1920x1080_4mbps_60fps_Main_at_L4.1_12bit.265
#MEDIA=media/VP9_Videos/Demuxed_VP9_Videos/444/Puppies_1280x720_5mbps_60fps_444.ivf
#MEDIA=media/AV1_Videos/Demuxed_AV1_Videos/Canal_640x320_2mbps_60fps_Main_at_L3.ivf -o /tmp/canal_640x320_av1.yuv

#CODEC=h264
CODEC=h265
#CODEC=vp9
#CODEC=av1

RESOLUTION="-w 1920 -h 1080"
#RESOLUTION="-w 3840 -h 2160"
#RESOLUTION="-w 7680 -h 4320"
