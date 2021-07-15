set -x

DISPLAY=:0
SAMPLE_PATH=/home/root/oneVPL/_build
#SAMPLE_PATH=/usr/lib64/mfx/samples
#SAMPLE_PATH=/usr/bin

#MEDIA=~/Puppies_3840x2160_20mbps_60fps_High_at_L5.2.h264
MEDIA=~/Puppies_3840x2160_20mbps_30fps_High_at_L5.0.265
#MEDIA=~/Foreman_3840x2160_12mbps_60fps.ivf


#$SAMPLE_PATH/sample_decode h264 -hw -vaapi -i $MEDIA -r -rgb4 -w 3840 -h 2160
#$SAMPLE_PATH/sample_decode h264 -hw -vaapi -i $MEDIA -r -rgb4 -w 3840 -h 2160 -dec_postproc force
$SAMPLE_PATH/sample_decode h265 -hw -vaapi -i $MEDIA -r -rgb4 -w 3840 -h 2160 -dec_postproc force
#$SAMPLE_PATH/sample_decode vp9 -hw -vaapi -i $MEDIA -r -rgb4 -w 3840 -h 2160 -dec_postproc force

#$SAMPLE_PATH/sample_decode h265 -hw -vaapi -i $MEDIA -r -bgr4 -w 3840 -h 2160
#$SAMPLE_PATH/sample_decode h265 -hw -vaapi -i $MEDIA -r -bgr4 -w 3840 -h 2160 -dec_postproc force
#$SAMPLE_PATH/sample_decode vp9 -hw -vaapi -i $MEDIA -r -bgr4 -w 3840 -h 2160 -dec_postproc force
