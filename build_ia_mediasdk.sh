#!/bin/bash

#set -x
if [ "$1" == "kmb" ]; then
	echo "Build MediasSDK for $0"
	cmake .. -DCMAKE_BUILD_TYPE=Debug -DMFX_HW_KMB=ON -DAPI=latest
	make -j$(nproc) mfxhw64 mfx_hevce_hw64 mfx_hevcd_hw64 sample_encode sample_decode sample_multi_transcode
elif [ "$1" == "tbh" ]; then
	echo "Build MediasSDK for $0"
	cmake .. -DCMAKE_BUILD_TYPE=Debug -DMFX_HW_THB=ON -DAPI=latest
	make -j$(nproc) mfxhw64 mfx_hevce_hw64 mfx_hevcd_hw64 mfx_vp9d_hw64 sample_encode sample_decode sample_multi_transcode
else
	echo "Usage: $0 kmb/tbh"
fi
