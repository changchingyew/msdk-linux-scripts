#!/bin/bash
set -x
export MIPS_ROOT=/media-usb/mips
export MIPS_APP=${MIPS_ROOT}/MIPS
export FFMPEG_PATH=${MIPS_ROOT}/ffmpeg
#export FFMPEG_PATH=/media-usb/libraries.media.middleware.cartwheel.ffmpeg/ffmpeg

export STREAM_PATH=${MIPS_APP}/content/
export RTSPSERVER_PATH=${MIPS_APP}/tools/rtsp-server/

export MIPS_INSTALL=${MIPS_ROOT}/mips_install
export PKG_CONFIG_PATH=${MIPS_INSTALL}/lib/pkgconfig
#export LD_LIBRARY_PATH=${MIPS_INSTALL}/lib
