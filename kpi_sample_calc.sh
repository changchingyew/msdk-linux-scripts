#!/bin/bash

SCRIPT_DIR="$( cd "$(dirname "${BASH_SOURCE[0]:-$0}")" >/dev/null 2>&1 ; pwd -P )"
. "${SCRIPT_DIR}/ia_media_env.sh" 

set +x

TIMEOUT=10
TIMEOUT_CALC=12

#H264
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps_High_at_L5.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 3840 -h 2160 -timeout ${TIMEOUT} 2>&1 | tee logda1  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps_High_at_L5.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 3840 -h 2160 -timeout ${TIMEOUT} 2>&1 | tee logda2  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps_High_at_L5.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 3840 -h 2160 -timeout ${TIMEOUT} 2>&1 | tee logda3  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps_High_at_L5.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 3840 -h 2160 -timeout ${TIMEOUT} 2>&1 | tee logda4  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps_High_at_L5.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 3840 -h 2160 -timeout ${TIMEOUT} 2>&1 | tee logda5  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps_High_at_L5.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 3840 -h 2160 -timeout ${TIMEOUT} 2>&1 | tee logda6  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb1  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb2  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb3  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb4  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb5  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb6  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb7  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb8  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb9  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb10  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb11  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb12  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb13  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb14  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb15  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb16  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb17  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb18  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb19  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb20  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb21  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb22  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb23  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb24  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb25  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb26  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb27  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb28  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb29  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb30  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb31  & \
# ${SAMPLE_PATH}/sample_decode h264 -hw -vaapi -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps_Baseline_at_L4.2.h264 -f 30 -api2x_dispatcher -dec_postproc force -rgb4 -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee logdb32  & \
# ${SAMPLE_PATH}/sample_encode h264 -hw -vaapi -nv12 -w 3840 -h 2160 -cbr -brcmultiplier 2 -b 50000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps.nv12 -api2x_dispatcher -timeout ${TIMEOUT} > logea1  & \
# ${SAMPLE_PATH}/sample_encode h264 -hw -vaapi -nv12 -w 3840 -h 2160 -cbr -brcmultiplier 2 -b 50000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps.nv12 -api2x_dispatcher -timeout ${TIMEOUT} > logea2  & \
# ${SAMPLE_PATH}/sample_encode h264 -hw -vaapi -nv12 -w 3840 -h 2160 -cbr -brcmultiplier 2 -b 50000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps.nv12 -api2x_dispatcher -timeout ${TIMEOUT} > logea3  & \
# ${SAMPLE_PATH}/sample_encode h264 -hw -vaapi -nv12 -w 3840 -h 2160 -cbr -brcmultiplier 2 -b 50000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps.nv12 -api2x_dispatcher -timeout ${TIMEOUT} > logea4  & \
# ${SAMPLE_PATH}/sample_encode h264 -hw -vaapi -nv12 -w 1920 -h 1080 -cbr -b 20000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps.nv12 -api2x_dispatcher -timeout ${TIMEOUT} > logeb1  & \
# ${SAMPLE_PATH}/sample_encode h264 -hw -vaapi -nv12 -w 1920 -h 1080 -cbr -b 20000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps.nv12 -api2x_dispatcher -timeout ${TIMEOUT} > logeb2  & \
# ${SAMPLE_PATH}/sample_encode h264 -hw -vaapi -nv12 -w 1920 -h 1080 -cbr -b 20000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps.nv12 -api2x_dispatcher -timeout ${TIMEOUT} > logeb3  & \
# ${SAMPLE_PATH}/sample_encode h264 -hw -vaapi -nv12 -w 1920 -h 1080 -cbr -b 20000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps.nv12 -api2x_dispatcher -timeout ${TIMEOUT} > logeb4  & \
# ${SAMPLE_PATH}/sample_encode h264 -hw -vaapi -nv12 -w 1280 -h 720 -cbr -b 14000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Cactus_1280x720_9mbps_60fps.nv12 -api2x_dispatcher -timeout ${TIMEOUT} > logec1

# sleep ${TIMEOUT_CALC}
# echo End!!
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