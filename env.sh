#!/bin/bash

#set -x
export LIBVA_DRIVERS_PATH=$PWD/vaapi_bypass/build
export LIBVA_DRIVER_NAME=hddl_bypass

export _MSDK_WORKDIR=$PWD
export MFX_HOME=/opt/intel/mediasdk
export MEDIASDK_ROOT=$_MSDK_WORKDIR/validation_tool
export MEDIASDK_STREAMS=$_MSDK_WORKDIR/streams

export PATH=$_MSDK_WORKDIR/validation_tool/msdk_perl/perl-5.22.2/gcc2.14/lin_x64:$MFX_HOME/bin:$MFX_HOME/share/mfx/samples/_bin:$PATH
#export PATH=$MFX_HOME/bin:$MFX_HOME/share/mfx/samples/_bin::$PATH
export LD_LIBRARY_PATH=$MFX_HOME/lib64:$MFX_HOME/lib64/mfx:/usr/local/lib:$LD_LIBRARY_PATH

export BYPASS_BATCH_MODE=1

#sudo modprobe mxlk
#sudo modprobe xlink
