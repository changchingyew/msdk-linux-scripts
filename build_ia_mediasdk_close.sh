#!/bin/bash

echo 'Ensure that you have copied the "ipp" to the below MEDIASDK_ROOT directory'

echo 'If not, download the "ipp" from here (\\jfspercbits001.amr.corp.intel.com\shared_outgoing\MSDK_Project\mediasdk_root\linux\) and copy here'

set -x

echo 'Renaming the directories to the original names'
mv drivers.gpu.media.sdk.lib mdp_msdk-lib
mv drivers.gpu.media.sdk.contrib mdp_msdk-contrib
mv drivers.gpu.media.sdk.val-tools mdp_msdk-val-tools

export MEDIASDK_ROOT=`pwd`
export MFX_HOME=$MEDIASDK_ROOT/mdp_msdk-lib
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$LIBVA_ROOT
export C_INCLUDE_PATH=$C_INCLUDE_PATH:$LIBVA_ROOT

cd $MFX_HOME
mkdir build
cd build

cmake .. -DCMAKE_BUILD_TYPE=debug
make -j$(nproc) -k


########################## OLD Build procedure (deprecated) #####################
#echo 'Setting environment vaiables needed'
#export MAKE_TYPE=intel64.make.debug
#export MEDIASDK_ROOT=`pwd`
#export MFX_HOME=$MEDIASDK_ROOT

#export MFX_MDF_PATH=$MEDIASDK_ROOT/cmrt_linux
#export CMAKE_VTUNE_HOME=$MEDIASDK_ROOT/mdp_msdk-contrib/itt
#export LIBVA_REV=${LIBVA_REV:-"va-unified"}
#export PKG_CONFIG_PATH=$MFX_HOME/mdp_msdk-contrib/libva/$LIBVA_REV${PKG_CONFIG_PATH:+":"$PKG_CONFIG_PATH}
#export PKG_CONFIG_TOP_BUILD_DIR=$PKG_CONFIG_PATH
#export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$LIBVA_ROOT
#export C_INCLUDE_PATH=$C_INCLUDE_PATH:$LIBVA_ROOT
#ln -s mdp_msdk-lib/builder/CMakeLists.txt ./

#cd $MEDIASDK_ROOT

#perl mdp_msdk-lib/builder/build_mfx.pl --cmake=intel64.make.debug --no-warn-as-error

# echo
#echo 'Compiling mfx_transcoder and player'
#make -C __cmake/$MAKE_TYPE -j 16 mfx_transcoder mfx_player

#echo 'compiling msdk_gmock'
#echo 'Compiling all the validaitons tools and apps'
#make VERBOSE=1 -C __cmake/$MAKE_TYPE -j $(nproc) msdk_ts msdk_gmock

#echo 'Compilation successful, you can find bin generated in ./__cmake/intel64.make.release/__bin/release/'
#echo 'Compilation successful!!'
