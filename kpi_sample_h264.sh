#!/bin/bash

SCRIPT_DIR="$( cd "$(dirname "${BASH_SOURCE[0]:-$0}")" >/dev/null 2>&1 ; pwd -P )"
. "${SCRIPT_DIR}/ia_media_env.sh" 

set -x

#H264
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps_High_at_L5.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logda1  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps_High_at_L5.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logda2  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps_High_at_L5.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logda3  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps_High_at_L5.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logda4  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps_High_at_L5.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logda5  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps_High_at_L5.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logda6  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb1  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb2  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb3  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb4  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb5  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb6  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb7  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb8  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb9  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb10  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb11  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb12  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb13  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb14  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb15  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb16  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb17  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb18  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb19  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb20  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb21  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb22  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb23  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb24  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb25  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb26  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb27  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb28  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb29  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb30  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb31  & \
${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -timeout 180 > logdb32  & \
${SAMPLE_PATH}/sample_encode h264 -hw -vaapi -nv12 -w 3840 -h 2160 -cbr -brcmultiplier 2 -b 50000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps.nv12 -api2x_dispatcher -timeout 180 > logea1  & \
${SAMPLE_PATH}/sample_encode h264 -hw -vaapi -nv12 -w 3840 -h 2160 -cbr -brcmultiplier 2 -b 50000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps.nv12 -api2x_dispatcher -timeout 180 > logea2  & \
${SAMPLE_PATH}/sample_encode h264 -hw -vaapi -nv12 -w 3840 -h 2160 -cbr -brcmultiplier 2 -b 50000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps.nv12 -api2x_dispatcher -timeout 180 > logea3  & \
${SAMPLE_PATH}/sample_encode h264 -hw -vaapi -nv12 -w 3840 -h 2160 -cbr -brcmultiplier 2 -b 50000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps.nv12 -api2x_dispatcher -timeout 180 > logea4  & \
${SAMPLE_PATH}/sample_encode h264 -hw -vaapi -nv12 -w 1920 -h 1080 -cbr -b 20000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps.nv12 -api2x_dispatcher -timeout 180 > logeb1  & \
${SAMPLE_PATH}/sample_encode h264 -hw -vaapi -nv12 -w 1920 -h 1080 -cbr -b 20000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps.nv12 -api2x_dispatcher -timeout 180 > logeb2  & \
${SAMPLE_PATH}/sample_encode h264 -hw -vaapi -nv12 -w 1920 -h 1080 -cbr -b 20000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps.nv12 -api2x_dispatcher -timeout 180 > logeb3  & \
${SAMPLE_PATH}/sample_encode h264 -hw -vaapi -nv12 -w 1920 -h 1080 -cbr -b 20000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps.nv12 -api2x_dispatcher -timeout 180 > logeb4  & \
${SAMPLE_PATH}/sample_encode h264 -hw -vaapi -nv12 -w 1280 -h 720 -cbr -b 14000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Cactus_1280x720_9mbps_60fps.nv12 -api2x_dispatcher -timeout 180 > logec1

extract:
sum=0
n=0
for file in /home/tgljc/ifpd/logda*; do
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
for file in /home/tgljc/ifpd/logdb*; do
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
for file in /home/tgljc/ifpd/logea*; do
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
for file in /home/tgljc/ifpd/logeb*; do
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

for file in /home/tgljc/ifpd/logec*; do
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
