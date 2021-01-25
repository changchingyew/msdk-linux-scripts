#!/bin/bash

#set -x
DIR=$(dirname $(readlink -f "${BASH_SOURCE[0]}" 2>/dev/null||echo $0))
export _MSDK_WORKDIR=$PWD

export LIBVA_DRIVERS_PATH=$_MSDK_WORKDIR/vaapi_bypass/build
export LIBVA_DRIVER_NAME=hddl_bypass

export HOST_INSTALL_DIR=/opt/intel/
export KMB_INSTALL_DIR=${HOST_INSTALL_DIR}/hddlunite
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${KMB_INSTALL_DIR}/lib
export PATH=$PATH:${KMB_INSTALL_DIR}/bin

export MFX_HOME=/opt/intel/onevpl

export PATH=$MFX_HOME/bin:$MFX_HOME/share/mfx/samples/_bin:$PATH
export LD_LIBRARY_PATH=$MFX_HOME/lib64:$MFX_HOME/lib64/mfx:$LD_LIBRARY_PATH

export BYPASS_BATCH_MODE=1

#sudo modprobe mxlk
#sudo modprobe xlink
