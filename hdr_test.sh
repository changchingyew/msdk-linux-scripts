set -x
export SAMPLE_PATH=/usr/lib64/mfx/samples/
#export SAMPLE_PATH=/usr/bin/

$SAMPLE_PATH/sample_decode h265 -hw -vaapi -i ./media-content/H265/420/Puppies_3840x2160_6mbps_60fps_Main_at_L5.1_12bit.265 -o /dev/null
#$SAMPLE_PATH/sample_decode h265 -hw -vaapi -i ./media-content/H265/422/Bunny_3840x2160_15mbps_60fps_Main_at_L5.1_422.265 -o /dev/null
#$SAMPLE_PATH/sample_decode h265 -hw -vaapi -i ./media-content/H265/422/Puppies_3840x2160_6mbps_60fps_Main_at_L5.1_12bit_422.265 -o /dev/null
#$SAMPLE_PATH/sample_decode h265 -hw -vaapi -i ./media-content/H265/444/Bunny_3840x2160_15mbps_60fps_Main_at_L5.1_444.265 -o /dev/null
#$SAMPLE_PATH/sample_decode h265 -hw -vaapi -i ./media-content/H265/444/Fireworks_3840x2160_12mbps_30fps_Main_at_L5.0_10bit_444.265 -o /dev/null
#$SAMPLE_PATH/sample_decode h265 -hw -vaapi -i ./media-content/H265/444/Puppies_3840x2160_6mbps_60fps_Main_at_L5.1_12bit_444.265 -o /dev/null
