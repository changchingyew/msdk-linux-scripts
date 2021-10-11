#!/bin/bash
set -x
#unset MFX_HOME
#cmake .. -DCMAKE_BUILD_TYPE=Debug -DBUILD_DISPATCHER=OFF -DBUILD_SAMPLES=OFF ..
#cmake .. -DCMAKE_BUILD_TYPE=Debug -DBUILD_DISPATCHER=ON -DBUILD_SAMPLES=ON ..
#cmake .. -DCMAKE_BUILD_TYPE=Debug -DBUILD_DISPATCHER=OFF -DBUILD_SAMPLES=OFF .. 
#cmake .. -DCMAKE_BUILD_TYPE=Debug -DBUILD_ALL=ON -DBUILD_VAL_TOOLS=ON
export MEDIASDK_ROOT=/media-usb/gfx_workspace/msdk_root
cmake -G Ninja -DCMAKE_BUILD_TYPE=Debug -DBUILD_ALL=ON -DBUILD_VAL_TOOLS=ON -DMFX_DISABLE_SW_FALLBACK=OFF ../sources/mdp_msdk-lib
#make -j$(nproc) 
ninja
#sudo make install
