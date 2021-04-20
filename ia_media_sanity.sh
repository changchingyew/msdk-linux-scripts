#!/bin/bash
set -x
#export PATH=/usr/lib64/mfx/samples/:$PATH
export PATH=/home/root/mdp_msdk-lib/build/__bin/release:$PATH
export LD_LIBRARY_PATH=/home/root/mdp_msdk-lib/build/__bin/release:$LD_LIBRARY_PATH

#Decode
OUTFILE=h264_GoneGirl
sample_decode h264 -hw -vaapi -i GoneGirl_1920x1080_20mbps_60fps_Main_at_L4.2.h264 -o /tmp/${OUTFILE}.yuv
head -c 10000000 /tmp/${OUTFILE}.yuv > /tmp/${OUTFILE}_.yuv
rm /tmp/${OUTFILE}.yuv
OUTFILE=mpeg2_Coastguard
sample_decode mpeg2 -hw -vaapi -i Coastguard_720x480_8mbps_30fps_High_at_Main.m2v -o /tmp/${OUTFILE}.yuv
head -c 10000000 /tmp/${OUTFILE}.yuv > /tmp/${OUTFILE}_.yuv
rm /tmp/${OUTFILE}.yuv
OUTFILE=vc1_Canal
sample_decode vc1 -hw -vaapi -i Canal_800x600_3mbps_25fps_Advanced_at_L3.vc1 -o /tmp/${OUTFILE}.yuv
head -c 10000000 /tmp/${OUTFILE}.yuv > /tmp/${OUTFILE}_.yuv
rm /tmp/${OUTFILE}.yuv
OUTFILE=jpeg_Canal
sample_decode jpeg -hw -vaapi -i Canal_320x240_3mbps_30fps.avi -o /tmp/${OUTFILE}.yuv
head -c 10000000 /tmp/${OUTFILE}.yuv > /tmp/${OUTFILE}_.yuv
rm /tmp/${OUTFILE}.yuv
OUTFILE=h265_GoneGirl
sample_decode h265 -hw -vaapi -i GoneGirl_800x600_3mbps_60fps_Main_at_L3.1_10bit.h265 -o /tmp/${OUTFILE}.yuv
head -c 10000000 /tmp/${OUTFILE}.yuv > /tmp/${OUTFILE}_.yuv
rm /tmp/${OUTFILE}.yuv
OUTFILE=vp9_Elecard2
sample_decode vp9 -hw -vaapi -i Elecard2_1280x720_1mbps_30fps_vp9.ivf -o /tmp/${OUTFILE}.yuv
head -c 10000000 /tmp/${OUTFILE}.yuv > /tmp/${OUTFILE}_.yuv
rm /tmp/${OUTFILE}.yuv
#Encode
sample_encode h264 -hw -vaapi -i test_03_640x480.yuv -w 640 -h 480 -o /tmp/test.h264
sample_encode h264 -hw -vaapi -i test_03_640x480.yuv -w 640 -h 480 -qsv-ff -o /tmp/test_qsv-ff.h264
sample_encode h265 -hw -vaapi -i test_03_640x480.yuv -w 640 -h 480  -o /tmp/test.h265
