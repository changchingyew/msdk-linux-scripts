#!/bin/bash

modprobe hantrodriver

export ARM_INSTALL_DIR=/opt/intel/
export USE_SIPP=1
export VPU_FIRMWARE_FILE="vpu.bin"
export SIPP_FIRST_SHAVE=3
export KMB_INSTALL_DIR=${ARM_INSTALL_DIR}/hddlunite
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${ARM_INSTALL_DIR}/hddlunite/lib
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/opt/openvino/opencv/lib
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/opt/openvino/deployment_tools/inference_engine/lib/aarch64
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/opt/openvino/deployment_tools/inference_engine/external/tbb/lib:/opt/openvino/deployment_tools/ngraph/lib
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${KMB_INSTALL_DIR}/lib
export PATH=$PATH:${KMB_INSTALL_DIR}/bin

#export LIBVA_DRIVER_NAME=hantro
#export LIBVA_DRIVERS_PATH=/home/root/vsi-vaapi-driver-bin
#export LD_LIBRARY_PATH=$LIBVA_DRIVERS_PATH:$LD_LIBRARY_PATH
