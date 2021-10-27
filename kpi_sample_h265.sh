#!/bin/bash

SCRIPT_DIR="$( cd "$(dirname "${BASH_SOURCE[0]:-$0}")" >/dev/null 2>&1 ; pwd -P )"
. "${SCRIPT_DIR}/ia_media_env.sh" 

TIMEOUT=10
TIMEOUT_CALC=12

#H265
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Bunny_3840x2160_15mbps_60fps_Main_at_L5.1.265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 3840 -h 2160 -timeout ${TIMEOUT} > logda1  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Bunny_3840x2160_15mbps_60fps_Main_at_L5.1.265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 3840 -h 2160 -timeout ${TIMEOUT} > logda2  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Bunny_3840x2160_15mbps_60fps_Main_at_L5.1.265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 3840 -h 2160 -timeout ${TIMEOUT} > logda3  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Bunny_3840x2160_15mbps_60fps_Main_at_L5.1.265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 3840 -h 2160 -timeout ${TIMEOUT} > logda4  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Bunny_3840x2160_15mbps_60fps_Main_at_L5.1.265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 3840 -h 2160 -timeout ${TIMEOUT} > logda5  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Bunny_3840x2160_15mbps_60fps_Main_at_L5.1.265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 3840 -h 2160 -timeout ${TIMEOUT} > logda6  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb1  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb2  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb3  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb4  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb5  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb6  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb7  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb8  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb9  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb10  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb11  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb12  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb13  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb14  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb15  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb16  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb17  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb18  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb19  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb20  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb21  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb22  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb23  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb24  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb25  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb26  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb27  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb28  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb29  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb30  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb31  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -dec_postproc force -rgb4 -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} > logdb32  & \
# ${SAMPLE_PATH}/sample_encode h265 -hw -vaapi -nv12 -w 3840 -h 2160 -cbr -b 25000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps.nv12 -api2x_dispatcher -dec_postproc force -rgb4 -w 3840 -h 2160 -timeout ${TIMEOUT} > logea1  & \
# ${SAMPLE_PATH}/sample_encode h265 -hw -vaapi -nv12 -w 3840 -h 2160 -cbr -b 25000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps.nv12 -api2x_dispatcher -dec_postproc force -rgb4 -w 3840 -h 2160 -timeout ${TIMEOUT} > logea2  & \
# ${SAMPLE_PATH}/sample_encode h265 -hw -vaapi -nv12 -w 3840 -h 2160 -cbr -b 25000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps.nv12 -api2x_dispatcher -dec_postproc force -rgb4 -w 3840 -h 2160 -timeout ${TIMEOUT} > logea3  & \
# ${SAMPLE_PATH}/sample_encode h265 -hw -vaapi -nv12 -w 3840 -h 2160 -cbr -b 25000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps.nv12 -api2x_dispatcher -dec_postproc force -rgb4 -w 3840 -h 2160 -timeout ${TIMEOUT} > logea4  & \
# ${SAMPLE_PATH}/sample_encode h265 -hw -vaapi -nv12 -w 1920 -h 1080 -cbr -b 12000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps.nv12 -api2x_dispatcher -dec_postproc force -rgb4 -w 3840 -h 2160 -timeout ${TIMEOUT} > logeb1  & \
# ${SAMPLE_PATH}/sample_encode h265 -hw -vaapi -nv12 -w 1920 -h 1080 -cbr -b 12000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps.nv12 -api2x_dispatcher -dec_postproc force -rgb4 -w 3840 -h 2160 -timeout ${TIMEOUT} > logeb2  & \
# ${SAMPLE_PATH}/sample_encode h265 -hw -vaapi -nv12 -w 1920 -h 1080 -cbr -b 12000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps.nv12 -api2x_dispatcher -dec_postproc force -rgb4 -w 3840 -h 2160 -timeout ${TIMEOUT} > logeb3  & \
# ${SAMPLE_PATH}/sample_encode h265 -hw -vaapi -nv12 -w 1920 -h 1080 -cbr -b 12000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps.nv12 -api2x_dispatcher -dec_postproc force -rgb4 -w 3840 -h 2160 -timeout ${TIMEOUT} > logeb4  & \
# ${SAMPLE_PATH}/sample_encode h265 -hw -vaapi -nv12 -w 1280 -h 720 -cbr -b 10000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Cactus_1280x720_9mbps_60fps.nv12 -api2x_dispatcher -dec_postproc force -rgb4 -w 3840 -h 2160 -timeout ${TIMEOUT} > logec1

sleep ${TIMEOUT_CALC}

sum=0
n=0
for file in logda*; do
while read -r line;
do 
f=(` grep "Frame number" | awk '{print $5}' | sed s/,// `);
sum=(` echo "scale=2; $sum + $f" | bc `);
n=$(($n+1))
#printf "sum: %f, f: %f \n" $sum $f  
done < "$file"
done
ave=(`echo "scale=2; $sum / $n" | bc `); 
echo "dec a="$ave

sum=0
n=0
for file in logdb*; do
while read -r line;
do 
f=(` grep "Frame number" | awk '{print $5}' | sed s/,// `);
sum=(` echo "scale=2; $sum + $f" | bc `);
n=$(($n+1))
#printf "sum: %f, f: %f \n" $sum $f  
done < "$file"
done
ave=(`echo "scale=2; $sum / $n" | bc `); 
echo "dec b="$ave

sum=0
n=0
for file in logea*; do
while read -r line;
do 
f=(` grep "Encoding fps" | awk '{print $3}' `);
sum=(` echo "scale=2; $sum + $f" | bc `);
n=$(($n+1))
#printf "sum: %f, f: %f \n" $sum $f  
done < "$file"
done
ave=(`echo "scale=2; $sum / $n" | bc `); 
echo "enc a="$ave

sum=0
n=0
for file in logeb*; do
while read -r line;
do 
f=(` grep "Encoding fps" | awk '{print $3}' `);
sum=(` echo "scale=2; $sum + $f" | bc `);
n=$(($n+1))
#printf "sum: %f, f: %f \n" $sum $f  
done < "$file"
done
ave=(`echo "scale=2; $sum / $n" | bc `); 
echo "enc b="$ave

for file in logec*; do
while read -r line;
do 
f=(` grep "Encoding fps" | awk '{print $3}' `);
sum=(` echo "scale=2; $sum + $f" | bc `);
n=$(($n+1))
#printf "sum: %f, f: %f \n" $sum $f  
done < "$file"
done
ave=(`echo "scale=2; $sum / $n" | bc `); 
echo "enc c="$ave
