#!/bin/bash

#set -x
if [ "$2" == "no_hddl" ]; then
	export CMAKE_OPT=
else
	export HOST_INSTALL_DIR=/opt/intel/
	export KMB_INSTALL_DIR=${HOST_INSTALL_DIR}/hddlunite
	export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${KMB_INSTALL_DIR}/lib
	export PATH=$PATH:${KMB_INSTALL_DIR}/bin

	export CMAKE_OPT=-DMFX_VSI_HDDL=ON
fi

if [ "$1" == "kmb" ]; then
	echo "Build MediasSDK for $0"
	cmake .. -DCMAKE_BUILD_TYPE=Debug -DMFX_HW_KMB=ON $CMAKE_OPT -DAPI=latest
	make -j$(nproc) mfxhw64 mfx_hevce_hw64 mfx_hevcd_hw64 sample_encode sample_decode sample_multi_transcode
elif [ "$1" == "tbh" ]; then
	echo "Build MediasSDK for $0"
	cmake .. -DCMAKE_BUILD_TYPE=Debug -DMFX_HW_THB=ON $CMAKE_OPT -DAPI=latest
	make -j$(nproc) mfxhw64 mfx_hevce_hw64 mfx_hevcd_hw64 mfx_vp9d_hw64 sample_encode sample_decode sample_multi_transcode
elif [ "$1" == "vsi" ]; then
	cmake .. -DCMAKE_BUILD_TYPE=Debug -DMFX_HW_VSI=ON $CMAKE_OPT -DAPI=latest
	make -j$(nproc) mfxhw64 mfx_hevcd_hw64 mfx_hevcd_hw64 mfx_vp9d_hw64 sample_encode sample_decode sample_multi_transcode
else
	echo "Usage: $0 kmb/tbh/vsi [no_hddl]"
fi
