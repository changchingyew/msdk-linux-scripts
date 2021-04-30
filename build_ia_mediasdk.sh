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
elif [ "$1" == "vsi_kmb" ]; then
        export HDDL_ROOT=/opt/intel/hddlunite
        export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${HDDL_ROOT}/lib
        export PATH=$PATH:${HDDL_ROOT}/bin
    else
        export HOST_INSTALL_DIR=/opt/intel/
        export KMB_INSTALL_DIR=${HOST_INSTALL_DIR}/hddlunite
        export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${KMB_INSTALL_DIR}/lib
        export PATH=$PATH:${KMB_INSTALL_DIR}/bin
    
        export CMAKE_OPT="-DMFX_VSI_HDDL=ON -DMFX_ONEVPL=ON"
fi

if [ "$1" == "kmb" ]; then
	echo "Build MediaSDK for $1"
	cmake .. -DCMAKE_BUILD_TYPE=Debug -DMFX_HW_KMB=ON $CMAKE_OPT -DAPI=latest
	make -j$(nproc) mfxhw64 mfx_hevce_hw64 mfx_hevcd_hw64 sample_encode sample_decode sample_multi_transcode

	cd ../open_source/build
	cmake .. -DCMAKE_BUILD_TYPE=Debug -DMFX_HW_THB=ON $CMAKE_OPT -DAPI=latest
	make -j$(nproc) sample_encode sample_decode sample_multi_transcode
elif [ "$1" == "tbh_rt" ]; then
    echo "Build oneVPL runtime for $1"
	cmake .. -DCMAKE_BUILD_TYPE=Debug -DMFX_HW_VSI=ON $CMAKE_OPT -DAPI=latest -DMFX_EXTRINSIC_VPL=ON -DVPL_ROOT=${VPL_ROOT}
	make -j$(nproc) mfxhw64 sample_encode sample_decode sample_multi_transcode simple_decode_hddl simple_transcode_hddl
elif [ "$1" == "vsi" ]; then
    echo "Build MediaSDK/oneVPL for $1"
	cmake .. -DMFX_HW_VSI=ON $CMAKE_OPT -DAPI=latest
	make -j$(nproc)
elif [ "$1" == "vsi_kmb" ]; then
    echo "Build MediaSDK for $1"
    cmake ..
    make -j$(nproc)
    
else
	echo "Usage: $0 kmb/tbh/vsi/vsi_kmb [no_hddl/no_onevpl]"
	echo -e "\tkmb for closed source KMB target"
	echo -e "\ttbh_rt for TBH oneVPL runtime target only"
	echo -e "\tvsi for open source TBH target"
	echo -e "\tvsi_kmb for open source KMB target"
	echo -e "\tno_hddl to disable HDDL unite build option"
	echo -e "\tno_onevpl to disable oneVPL build option"
fi
