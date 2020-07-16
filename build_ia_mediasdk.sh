#!/bin/bash

set -x
#cmake .. -DCMAKE_BUILD_TYPE=Debug -DENABLE_TEXTLOG=true -DMFX_PLUGINS_CONF_DIR=/home/test/msdk/mdp_msdk-lib/build/__bin/Debug/ -DMFX_HW_KMB=ON -DAPI=latest
#cmake .. -DCMAKE_BUILD_TYPE=Debug -DMFX_PLUGINS_CONF_DIR=/opt/intel/mediasdk/lib/mfx/ -DMFX_HW_KMB=ON -DAPI=latest -DENABLE_TESTS=ON
#cmake .. -DCMAKE_BUILD_TYPE=Debug -DMFX_PLUGINS_CONF_DIR=/opt/intel/mediasdk/lib/mfx/ -DMFX_HW_KMB=ON -DAPI=latest
cmake .. -DCMAKE_BUILD_TYPE=Debug -DMFX_HW_KMB=ON -DAPI=latest
make -j$(nproc) mfxhw64 mfx_hevce_hw64 mfx_hevcd_hw64 mfx_vp9d_hw64 sample_encode sample_decode
#sudo make install
