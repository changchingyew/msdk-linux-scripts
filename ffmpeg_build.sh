#!/bin/bash

SCRIPT_DIR="$( cd "$(dirname "${BASH_SOURCE[0]:-$0}")" >/dev/null 2>&1 ; pwd -P )"
. "${SCRIPT_DIR}/jenkinsonlake_env.sh" 

cd ${FFMPEG_PATH}
#./configure --prefix=${MIPS_INSTALL} --enable-debug --enable-vaapi --enable-libvpl --enable-shared --disable-stripping
#./configure --prefix=${MIPS_INSTALL} --enable-debug --enable-vaapi --enable-libmfx --enable-shared --disable-stripping
make -j$(nproc) V=1
make install V=1
