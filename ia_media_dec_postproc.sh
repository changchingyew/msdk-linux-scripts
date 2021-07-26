set -x

DISPLAY=:0
SAMPLE_PATH=/media2/oneVPL/_build
#SAMPLE_PATH=/media2/MediaSDK/build/__bin/release
#SAMPLE_PATH=/usr/lib64/mfx/samples
#SAMPLE_PATH=/usr/bin
export LD_LIBRARY_PATH=$SAMPLE_PATH

#MEDIA=Puppies_3840x2160_20mbps_60fps_High_at_L5.2.h264
#MEDIA=Puppies_3840x2160_20mbps_30fps_High_at_L5.0.265
#MEDIA=Foreman_3840x2160_12mbps_60fps.ivf

#MEDIA=Coastguard_7680x4320_3mbps_60fps_Main_at_L6.1.265
#MEDIA=Coastguard_7680x4320_3mbps_60fps_Main_at_L6.1.ivf
MEDIA=vp9-7680x4320-video.ivf

#$SAMPLE_PATH/sample_decode h264 -hw -vaapi -i /media2/$MEDIA -r -rgb4 -w 3840 -h 2160
#$SAMPLE_PATH/sample_decode h264 -hw -vaapi -i /media2/$MEDIA -r -rgb4 -w 3840 -h 2160 -dec_postproc force
#$SAMPLE_PATH/sample_decode h265 -hw -vaapi -i /media2/$MEDIA -rgb4 -w 3840 -h 2160 -o /dev/null
#$SAMPLE_PATH/sample_decode h265 -hw -vaapi -i /media2/$MEDIA -rgb4 -w 3840 -h 2160
#$SAMPLE_PATH/sample_decode h265 -hw -vaapi -i /media2/$MEDIA -rgb4 -w 3840 -h 2160 -dec_postproc force -n 1 -o /tmp/${MEDIA}.vdsfc.rgb
#$SAMPLE_PATH/sample_decode h265 -hw -vaapi -i /media2/$MEDIA -rgb4 -w 7680 -h 4320 -dec_postproc force -n 1 -o /tmp/${MEDIA}.vdsfc.rgb
#$SAMPLE_PATH/sample_decode h265 -hw -vaapi -i /media2/$MEDIA -rgb4 -w 7680 -h 4320 -n 1 -o /tmp/${MEDIA}.vpp.rgb
#$SAMPLE_PATH/sample_decode vp9 -hw -vaapi -i /media2/$MEDIA -r -rgb4 -w 3840 -h 2160 -dec_postproc force -n 1 -o /tmp/${MEDIA}.vdsfc.rgb
$SAMPLE_PATH/sample_decode vp9 -hw -vaapi -i /media2/$MEDIA -rgb4 -w 7680 -h 4320 -dec_postproc force -n 1 -o /tmp/${MEDIA}.vdsfc.rgb
$SAMPLE_PATH/sample_decode vp9 -hw -vaapi -i /media2/$MEDIA -rgb4 -w 7680 -h 4320 -n 1 -o /tmp/${MEDIA}.vpp.rgb

#$SAMPLE_PATH/sample_decode h265 -hw -vaapi -i /media2/$MEDIA -r -bgr4 -w 3840 -h 2160
#$SAMPLE_PATH/sample_decode h265 -hw -vaapi -i /media2/$MEDIA -r -bgr4 -w 3840 -h 2160 -dec_postproc force
#$SAMPLE_PATH/sample_decode h265 -hw -vaapi -i /media2/$MEDIA -bgr4 -w 3840 -h 2160 -dec_postproc force -n 1 -o /tmp/puppies_3840x2160.bgr4
#$SAMPLE_PATH/sample_decode vp9 -hw -vaapi -i /media2/$MEDIA -r -bgr4 -w 3840 -h 2160 -dec_postproc force
