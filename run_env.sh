#!/bin/bash

modprobe hantrodriver

export HOST_INSTALL_DIR=/opt/intel/
export KMB_INSTALL_DIR=${HOST_INSTALL_DIR}/hddlunite
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${KMB_INSTALL_DIR}/lib
export PATH=$PATH:${KMB_INSTALL_DIR}/bin

#export LIBVA_DRIVER_NAME=hantro
#export LIBVA_DRIVERS_PATH=/home/root/vsi-vaapi-driver-bin
#export LD_LIBRARY_PATH=$LIBVA_DRIVERS_PATH:$LD_LIBRARY_PATH
