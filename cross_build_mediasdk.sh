#!/bin/bash
set -x
unset LD_LIBRARY_PATH
source /usr/local/oecore-x86_64/environment-setup-aarch64-ese-linux

cmake ../ -DMFX_HW_VSI_TARGET=ON -DMFX_VSI_HDDL=OFF -DAPI=latest -DT_ARCH_ARM=ON -DCMAKE_BUILD_TYPE=debug
make -j$(nproc) mfxhw64 sample_decode sample_encode

