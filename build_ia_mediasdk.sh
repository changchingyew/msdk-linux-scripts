#!/bin/bash

#set -x

if [ "$2" == "no_hddl" ]; then
	unset CMAKE_OPT
elif [ "$2" == "no_onevpl" ]; then
	export HOST_INSTALL_DIR=/opt/intel/
	export KMB_INSTALL_DIR=${HOST_INSTALL_DIR}/hddlunite
	export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${KMB_INSTALL_DIR}/lib
	export PATH=$PATH:${KMB_INSTALL_DIR}/bin

	export CMAKE_OPT="-DMFX_VSI_HDDL=ON -DMFX_ONEVPL=OFF"
else
	export HOST_INSTALL_DIR=/opt/intel/
	export KMB_INSTALL_DIR=${HOST_INSTALL_DIR}/hddlunite
	export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${KMB_INSTALL_DIR}/lib
	export PATH=$PATH:${KMB_INSTALL_DIR}/bin

	export CMAKE_OPT="-DMFX_VSI_HDDL=ON -DMFX_ONEVPL=ON"
fi

if [ "$1" == "kmb" ]; then
	echo "Build MediasSDK for $0"
	cmake .. -DCMAKE_BUILD_TYPE=Debug -DMFX_HW_KMB=ON $CMAKE_OPT -DAPI=latest
	make -j$(nproc) mfxhw64 mfx_hevce_hw64 mfx_hevcd_hw64 sample_encode sample_decode sample_multi_transcode

	cd ../open_source/build
	cmake .. -DCMAKE_BUILD_TYPE=Debug -DMFX_HW_THB=ON $CMAKE_OPT -DAPI=latest
	make -j$(nproc) sample_encode sample_decode sample_multi_transcode
elif [ "$1" == "tbh" ]; then
	echo "Build MediasSDK for $0"
	cmake .. -DCMAKE_BUILD_TYPE=Debug -DMFX_HW_THB=ON $CMAKE_OPT -DAPI=latest
	make -j$(nproc) mfxhw64 mfx_hevce_hw64 mfx_hevcd_hw64 mfx_vp9d_hw64 sample_encode sample_decode sample_multi_transcode

	cd ../open_source/build
	cmake .. -DCMAKE_BUILD_TYPE=Debug -DMFX_HW_THB=ON $CMAKE_OPT -DAPI=latest
	make -j$(nproc) sample_encode sample_decode sample_multi_transcode
elif [ "$1" == "vsi" ]; then
	cmake .. -DCMAKE_BUILD_TYPE=Debug -DMFX_HW_VSI=ON $CMAKE_OPT -DAPI=latest
	make -j$(nproc) mfxhw64 sample_encode sample_decode sample_multi_transcode simple_decode_hddl simple_transcode_hddl simple_decode_dynamic_pp
else
	echo "Usage: $0 kmb/tbh/vsi [no_hddl/no_onevpl]"
	echo -e "\tkmb for closed source kmb target"
	echo -e "\ttbh for closed source tbh target"
	echo -e "\tvsi for open source kmb/tbh target"
	echo -e "\tno_hddl to disable HDDL unite build option"
	echo -e "\tno_onevpl to disable oneVPL build option"
fi
