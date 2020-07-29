#!/bin/bash
set -x

cd $PWD/mdp_msdk-tests-adydychk-2

for i in `seq 1 2`;
do
	./test_driver.pl -s beh_avce_aud -p u18.04_kmb_64 --gold no -i $i
done    

for i in `seq 1 20`;
do
	./test_driver.pl -s beh_avce_co2_disable_deblocking -p u18.04_kmb_64 --gold no -i $i
done    

./test_driver.pl -s beh_avce_entropy_mode -p u18.04_kmb_64 --gold no -i 1

for i in `seq 1 8`;
do
	./test_driver.pl -s beh_avce_fourcc -p u18.04_kmb_64 --gold no -i $i
done    

for i in `seq 1 2`;
do
	./test_driver.pl -s beh_avce_mono_stream -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 20`;
do
	./test_driver.pl -s beh_avce_nummbperslice -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 20`;
do
	./test_driver.pl -s beh_avce_resend_sps_pps -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 16 28`;
do
	./test_driver.pl -s beh_avce_reset -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 3`;
do
	./test_driver.pl -s beh_avce_vsi_frame_rate -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 15`;
do
	./test_driver.pl -s beh_avce_vsi_ipcm -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 15`;
do
	./test_driver.pl -s beh_avce_vsi_ipcm_roimap -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 39`;
do
	./test_driver.pl -s beh_avce_vsi_roi -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 8`;
do
	./test_driver.pl -s beh_avce_vsi_vui_hrd -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 42`;
do
./test_driver.pl -s beh_hevce_8b_420_nv12_multislice -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 2`;
do
	./test_driver.pl -s beh_hevce_aud -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 22`;
do
	./test_driver.pl -s beh_hevce_co2_disable_deblocking -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 8`;
do
./test_driver.pl -s beh_hevce_fourcc -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 2`;
do
	./test_driver.pl -s beh_hevce_mono_stream -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 12`;
do
	./test_driver.pl -s beh_hevce_resend_sps_pps -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 16 28`;
do
	./test_driver.pl -s beh_hevce_reset -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 3`;
do
	./test_driver.pl -s beh_hevce_vsi_frame_rate -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 15`;
do
	./test_driver.pl -s beh_hevce_vsi_ipcm -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 27`;
do
	./test_driver.pl -s beh_hevce_vsi_ipcm_roimap -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 39`;
do
	./test_driver.pl -s beh_hevce_vsi_roi -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 20`;
do
	./test_driver.pl -s beh_mjpege_fourcc -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 4`;
do
	./test_driver.pl -s beh_mjpege_vsi_crop_roi -p u18.04_kmb_64 --gold no -i $i
done

./test_driver.pl -s h264d_to_h264e_hevce_mjpege_maximum_stream_vsi -p u18.04_kmb_64 --gold no -i 1

./test_driver.pl -s h264d_to_hevce_hevce_vsi_roi -p u18.04_kmb_64 --gold no -i 1

./test_driver.pl -s h264d_to_hevce_jpege_vsi -p u18.04_kmb_64 --gold no -i 1

for i in `seq 1 4`;
do
	./test_driver.pl -s h264d_vsi_profiles -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 8`;
do
	./test_driver.pl -s h264d_vsi_resolutions -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 120 121`;
do
	./test_driver.pl -s h264e_brc -p u18.04_kmb_64 --gold no -i $i
done

./test_driver.pl -s h264e_func-cqp -p u18.04_kmb_64 --with sys --gold no -i 16

./test_driver.pl -s h264e_goppattern -p u18.04_kmb_64 --gold no -i 136

for i in `seq 1 10`;
do
	./test_driver.pl -s h264e_vsi_bitrate_range -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 2`;
do
	./test_driver.pl -s h264e_vsi_cavlc -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 2`;
do
	./test_driver.pl -s h264e_vsi_cbr_vbr -p u18.04_kmb_64 --gold no -i $i
done

./test_driver.pl -s h264e_vsi_dynamic_idr_brc -p u18.04_kmb_64 --gold no -i 1

./test_driver.pl -s h264e_vsi_dynamic_idr_gop -p u18.04_kmb_64 --gold no -i 1

./test_driver.pl -s h264e_vsi_dynamic_idr -p u18.04_kmb_64 --gold no -i 1

./test_driver.pl -s h264e_vsi_dynamic_idr_roi -p u18.04_kmb_64 --gold no -i 1

for i in `seq 1 5`;
do
	./test_driver.pl -s h264e_vsi_low_bitrate -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 2`;
do
	./test_driver.pl -s h264e_vsi_output_bitrate -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 4`;
do
	./test_driver.pl -s h264e_vsi_profile -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 9`;
do
	./test_driver.pl -s h264e_vsi_resolutions -p u18.04_kmb_64 --gold no -i $i
done

./test_driver.pl -s hevcd_to_h264e_vsi -p u18.04_kmb_64 --gold no -i 1

for i in `seq 1 3`;
do
	./test_driver.pl -s hevcd_vsi_profiles -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 8`;
do
./test_driver.pl -s hevcd_vsi_resolutions -p u18.04_kmb_64 --gold no -i $i
done

./test_driver.pl -s hevce_dynamic_bitrate -p u18.04_kmb_64 --gold no -i 1

./test_driver.pl -s hevce_func-cqp-plugin_hevcehw -p u18.04_kmb_64 --gold no -i 22 --with sys

./test_driver.pl -s hevce_goppattern_light-plugin_hevcehw -p u18.04_kmb_64 --gold no -i 4
./test_driver.pl -s hevce_goppattern_light-plugin_hevcehw -p u18.04_kmb_64 --gold no -i 85

for i in `seq 1 7`;
do
	./test_driver.pl -s hevce_vsi_bitrate_range -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 2`;
do
	./test_driver.pl -s hevce_vsi_cbr_vbr -p u18.04_kmb_64 --gold no -i $i
done

./test_driver.pl -s hevce_vsi_cbr_vbr -p u18.04_kmb_64 --gold no -i 2

./test_driver.pl -s hevce_vsi_dynamic_idr_brc -p u18.04_kmb_64 --gold no -i 1

./test_driver.pl -s hevce_vsi_dynamic_idr_gop -p u18.04_kmb_64 --gold no -i 1

./test_driver.pl -s hevce_vsi_dynamic_idr -p u18.04_kmb_64 --gold no -i 1

./test_driver.pl -s hevce_vsi_dynamic_idr_roi -p u18.04_kmb_64 --gold no -i 1

for i in `seq 1 5`;
do
	./test_driver.pl -s hevce_vsi_low_bitrate -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 2`;
do
	./test_driver.pl -s hevce_vsi_output_bitrate -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 3`;
do
	./test_driver.pl -s hevce_vsi_profile -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 5`;
do
	./test_driver.pl -s hevce_vsi_resolutions -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 6`;
do
	./test_driver.pl -s hevce_vsi_vbr -p u18.04_kmb_64 --gold no -i $i
done

./test_driver.pl -s mjpegd_conf -p u18.04_kmb_64 --with sys --gold no -i 5

array=( 2 5 8 11 14 17 20 23 26 29 32 35 38 41 44 47 50 53 56 59 62 65 68 \
		71 74 77 80 83 86 89 92 95 98 101 104 107 110 113 116 119 122 125 128 \
		131 134 137 140 143 146 149 152 155 158 161 164 167 170 173 176 179 \
		182 185 188 191 194 197 )
for i in "${array[@]}"
do
	./test_driver.pl -s mjpegd_conf --with sync -p u18.04_kmb_64 --gold no -i $i
done

for i in `seq 1 8`;
do
	./test_driver.pl -s mjpegd_vsi_resolutions -p u18.04_kmb_64 --gold no -i $i
done

./test_driver.pl -s mjpege_func -p u18.04_kmb_64 --with sys --gold no -i 11
./test_driver.pl -s mjpege_func -p u18.04_kmb_64 --with sys --gold no -i 16

for i in `seq 1 10`;
do
	./test_driver.pl -s mjpege_vsi_resolutions -p u18.04_kmb_64 --gold no -i $i
done

./test_driver.pl -s v21_h264e_dynamic_bitrate -p u18.04_kmb_64 --gold no -i  1
