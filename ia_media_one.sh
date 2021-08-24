#!/bin/bash

SCRIPT_DIR="$( cd "$(dirname "${BASH_SOURCE[0]:-$0}")" >/dev/null 2>&1 ; pwd -P )"
. "${SCRIPT_DIR}/ia_media_env.sh" 

OUTPUT="-r -rgb4 -f 30"
#OUTPUT="-rwld -rgb4 -f 30"
#OUTPUT="-o /tmp/output"
#OUTPUT="-o /dev/null"
#OUTPUT="-api2x_dispatcher -o /dev/null"

${SAMPLE_PATH}/sample_decode ${CODEC} -hw -vaapi -i ${MEDIA_PATH}/${MEDIA} ${RESOLUTION} ${OUTPUT}
#${SAMPLE_PATH}/sample_encode ${CODEC} -hw -vaapi -i ${MEDIA_PATH}/${MEDIA} ${RESOLUTION} ${OUTPUT}

#$SAMPLE_PATH/sample_decode h265 -vaapi -hw -i /media/H265_Videos/Demuxed_H265_Videos/Coastguard_640x320_1mbps_30fps_Main_at_L2.1.h265 -r -rgb4 -f 30
#$SAMPLE_PATH/sample_decode h265 -vaapi -hw -i ./media-content/H265/420/Puppies_3840x2160_6mbps_60fps_Main_at_L5.1_12bit.265 -o /dev/null

#$SAMPLE_PATH/sample_decode h265 -vaapi -hw -i /media/H265_Videos/Demuxed_H265_Videos/Coastguard_640x320_1mbps_30fps_Main_at_L2.1.h265 -o /tmp/coastguard.yuv
#$SAMPLE_PATH/sample_decode h264 -vaapi -hw -i /media/Demuxed_H264_Videos/Cactus_640x320_3mbps_30fps_Main_at_L2.2.h264 -o /tmp/cactus_640x320_264.yuv -n 120
#$SAMPLE_PATH/sample_decode vp9 -vaapi -hw -i /media/VP9_Videos/Demuxed_VP9_Videos/444/Puppies_1280x720_5mbps_60fps_444.ivf -o /tmp/puppies_1280x620_vp9.yuv -n 120
#$SAMPLE_PATH/sample_decode av1 -vaapi -hw -i /media/AV1_Videos/Demuxed_AV1_Videos/Canal_640x320_2mbps_60fps_Main_at_L3.ivf -o /tmp/canal_640x320_av1.yuv -n 120

#$SAMPLE_PATH/sample_encode h265 -i /media/RAWS/test_04_640x480.yuv -o /tmp/Fireworks_640x480_4000kbps_60fps__High_at_L3.3VME.265 -w 640 -h 480 -f 60 -hw
#$SAMPLE_PATH/sample_encode h264 -i /media/RAWS/test_04_640x480.yuv -o /tmp/Fireworks_640x480_4000kbps_60fps__High_at_L3.3VME.264 -w 640 -h 480 -CodecProfile 100 -CodecLevel 32 -b 4000 -f 60 -u speed -hw
#$SAMPLE_PATH/sample_decode h265 -vaapi -hw -i /media/H265_Videos/Demuxed_H265_Videos/Puppies_1920x1080_38mbps_30fps_Main_at_L4.1.265 -r -rgb4 -f 30
#$SAMPLE_PATH/sample_decode h265 -vaapi -hw -i /media-nvme/Puppies_1920x1080_38mbps_30fps_Main_at_L4.1.265 -r -rgb4 -f 30
#$SAMPLE_PATH/sample_decode h265 -vaapi -hw -i /media-nvme/Puppies_1920x1080_38mbps_30fps_Main_at_L4.1.265 -rwld -rgb4 -f 30
#$SAMPLE_PATH/sample_decode h265 -vaapi -hw -i /media-nvme/Puppies_1920x1080_38mbps_30fps_Main_at_L4.1.265 -o /dev/null

#dec_postproc
#MEDIA=Puppies_3840x2160_20mbps_60fps_High_at_L5.2.h264
	#$SAMPLE_PATH/sample_decode h264 -hw -vaapi -i $MEDIA -r -rgb4 -w 3840 -h 2160
#$SAMPLE_PATH/sample_decode h264 -hw -vaapi -i $MEDIA -r -rgb4 -w 3840 -h 2160 -dec_postproc force
#/usr/bin/sample_decode h265 -vaapi -hw -i /media-nvme/Coastguard_7680x4320_3mbps_60fps_Main_at_L6.1.265 -r -rgb4 -f 30

#sample_encode h265 -hw -vaapi -i /media/RAWS/NV12_Prog_Planar_1920x1080.yuv -w 1920 -h 1080 -o /dev/null -lowpower:on
#sample_encode h265 -hw -vaapi -i /media/RAWS/NV12_Prog_Planar_1920x1080.yuv -w 1920 -h 1080 -o /dev/null
