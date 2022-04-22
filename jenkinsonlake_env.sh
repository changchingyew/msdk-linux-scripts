#!/bin/bash
#set -x

source ~/intel/oneapi/setvars.sh
source ~/intel/openvino_2021/bin/setupvars.sh
#source ~/intel/openvino_2022/setupvars.sh

# export CC=icx
# export CXX=icpx
# unset CMAKE_C_COMPILER
# unset CMAKE_CXX_COMPILER=icpx 

# export DISPLAY=:0
#export MIPS_ROOT=/media-usb/mips
export MIPS_ROOT=~/hdd2/ledsw
export MIPS_APP=${MIPS_ROOT}/applications.media.gui.mips
export TEMPLATE_PATH=${MIPS_APP}/mfil/templates
export FFMPEG_PATH=${MIPS_ROOT}/ffmpeg
#export FFMPEG_PATH=/media-usb/libraries.media.middleware.cartwheel.ffmpeg/ffmpeg
#export FFMPEG_PATH=${MIPS_ROOT}/mips_install/bin

export STREAM_PATH=${MIPS_APP}/content/
# export STREAM_FILE=FPS_test_1080p60_L4.2_100frames.mkv

export OUTPUT_PATH=/tmp/
# export OUTPUT_FILE=out.yuv
#export OUTPUT_PATH=/dev/
#export OUTPUT_FILE=null

export RTSPSERVER_PATH=${MIPS_APP}/tools/rtsp-server/

#export MIPS_INSTALL=${MIPS_ROOT}/mips_install
export MIPS_INSTALL=${MIPS_ROOT}/local_install

export LIBVA_DRIVERS_PATH=/usr/lib/x86_64-linux-gnu/dri
export LIBVA_DRIVER_NAME=iHD

#export PKG_CONFIG_PATH=${MIPS_INSTALL}/lib/pkgconfig:/opt/intel/mediasdk/lib64/pkgconfig
#export LD_LIBRARY_PATH=${MIPS_INSTALL}/lib:/opt/intel/mediasdk/lib64
export PKG_CONFIG_PATH=${MIPS_INSTALL}/lib/pkgconfig
export LD_LIBRARY_PATH=${MIPS_INSTALL}/lib:/usr/local/lib/x86_64-linux-gnu/:${LD_LIBRARY_PATH}

export MEDIA_PATH=/media-nvme

export TEMPLATE_PATH=${MIPS_APP}/mfil/templates/

export LIBGPU_PATH=${MIPS_APP}/mfdl/src/Node/WatermarkNode/lib/
# export TENSORFLOW_CPU_LIB_PATH=/home/mips/hoesheng/tf_lib/

export LIBSPLITTERKERNEL_PATH=${MIPS_APP}/mfdl/src/Node/SplitterFilter/kernel/build/
