#!/bin/bash

SCRIPT_DIR="$( cd "$(dirname "${BASH_SOURCE[0]:-$0}")" >/dev/null 2>&1 ; pwd -P )"
. "${SCRIPT_DIR}/ia_media_env.sh" 

OPS="-dec_postproc force -rgb4"
TIMEOUT=180

#H265
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Bunny_3840x2160_15mbps_60fps_Main_at_L5.1.265 -f 30 -api2x_dispatcher -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logda1  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Bunny_3840x2160_15mbps_60fps_Main_at_L5.1.265 -f 30 -api2x_dispatcher -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logda2  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Bunny_3840x2160_15mbps_60fps_Main_at_L5.1.265 -f 30 -api2x_dispatcher -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logda3  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Bunny_3840x2160_15mbps_60fps_Main_at_L5.1.265 -f 30 -api2x_dispatcher -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logda4  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Bunny_3840x2160_15mbps_60fps_Main_at_L5.1.265 -f 30 -api2x_dispatcher -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logda5  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Bunny_3840x2160_15mbps_60fps_Main_at_L5.1.265 -f 30 -api2x_dispatcher -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logda6  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb1  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb2  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb3  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb4  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb5  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb6  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb7  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb8  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb9  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb10  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb11  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb12  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb13  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb14  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb15  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb16  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb17  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb18  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb19  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb20  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb21  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb22  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb23  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb24  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb25  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb26  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb27  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb28  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb29  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb30  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb31  & \
${SAMPLE_PATH}/sample_decode h265 -hw -vaapi -i ${MEDIA_PATH}/Duck_1920x1080_3mbps_25fps_Main_at_L4.0_10bit.h265 -f 30 -api2x_dispatcher ${OPS} -w 1920 -h 1080 -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logdb32  & \
${SAMPLE_PATH}/sample_encode h265 -hw -vaapi -nv12 -w 3840 -h 2160 -cbr -b 25000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps.nv12 -api2x_dispatcher -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logea1  & \
${SAMPLE_PATH}/sample_encode h265 -hw -vaapi -nv12 -w 3840 -h 2160 -cbr -b 25000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps.nv12 -api2x_dispatcher -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logea2  & \
${SAMPLE_PATH}/sample_encode h265 -hw -vaapi -nv12 -w 3840 -h 2160 -cbr -b 25000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps.nv12 -api2x_dispatcher -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logea3  & \
${SAMPLE_PATH}/sample_encode h265 -hw -vaapi -nv12 -w 3840 -h 2160 -cbr -b 25000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Puppies_3840x2160_20mbps_60fps.nv12 -api2x_dispatcher -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logea4  & \
${SAMPLE_PATH}/sample_encode h265 -hw -vaapi -nv12 -w 1920 -h 1080 -cbr -b 12000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps.nv12 -api2x_dispatcher -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logeb1  & \
${SAMPLE_PATH}/sample_encode h265 -hw -vaapi -nv12 -w 1920 -h 1080 -cbr -b 12000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps.nv12 -api2x_dispatcher -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logeb2  & \
${SAMPLE_PATH}/sample_encode h265 -hw -vaapi -nv12 -w 1920 -h 1080 -cbr -b 12000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps.nv12 -api2x_dispatcher -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logeb3  & \
${SAMPLE_PATH}/sample_encode h265 -hw -vaapi -nv12 -w 1920 -h 1080 -cbr -b 12000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Fireworks_1920x1080_12mbps_60fps.nv12 -api2x_dispatcher -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logeb4  & \
${SAMPLE_PATH}/sample_encode h265 -hw -vaapi -nv12 -w 1280 -h 720 -cbr -b 10000 -x 1 -g 1 -r 1 -async 4 -lowpower:on -u 7 -f 30 -perf_opt 200 -o /dev/null -i ${MEDIA_PATH}/Cactus_1280x720_9mbps_60fps.nv12 -api2x_dispatcher -timeout ${TIMEOUT} 2>&1 | tee kpi_sample_h265/logec1

# sleep ${TIMEOUT_CALC}

# sum=0
# n=0
# for file in kpi_sample_h265/logda*; do
# while read -r line;
# do 
# f=(` grep "Frame number" | awk '{print $5}' | sed s/,// `);
# sum=(` echo "scale=2; $sum + $f" | bc `);
# n=$(($n+1))
# #printf "sum: %f, f: %f \n" $sum $f  
# done < "$file"
# done
# ave=(`echo "scale=2; $sum / $n" | bc `); 
# echo "dec a="$ave

# sum=0
# n=0
# for file in kpi_sample_h265/logdb*; do
# while read -r line;
# do 
# f=(` grep "Frame number" | awk '{print $5}' | sed s/,// `);
# sum=(` echo "scale=2; $sum + $f" | bc `);
# n=$(($n+1))
# #printf "sum: %f, f: %f \n" $sum $f  
# done < "$file"
# done
# ave=(`echo "scale=2; $sum / $n" | bc `); 
# echo "dec b="$ave

# sum=0
# n=0
# for file in logea*; do
# while read -r line;
# do 
# f=(` grep "Encoding fps" | awk '{print $3}' `);
# sum=(` echo "scale=2; $sum + $f" | bc `);
# n=$(($n+1))
# #printf "sum: %f, f: %f \n" $sum $f  
# done < "$file"
# done
# ave=(`echo "scale=2; $sum / $n" | bc `); 
# echo "enc a="$ave

# sum=0
# n=0
# for file in logeb*; do
# while read -r line;
# do 
# f=(` grep "Encoding fps" | awk '{print $3}' `);
# sum=(` echo "scale=2; $sum + $f" | bc `);
# n=$(($n+1))
# #printf "sum: %f, f: %f \n" $sum $f  
# done < "$file"
# done
# ave=(`echo "scale=2; $sum / $n" | bc `); 
# echo "enc b="$ave

# for file in logec*; do
# while read -r line;
# do 
# f=(` grep "Encoding fps" | awk '{print $3}' `);
# sum=(` echo "scale=2; $sum + $f" | bc `);
# n=$(($n+1))
# #printf "sum: %f, f: %f \n" $sum $f  
# done < "$file"
# done
# ave=(`echo "scale=2; $sum / $n" | bc `); 
# echo "enc c="$ave
