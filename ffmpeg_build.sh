#!/bin/bash

SCRIPT_DIR="$( cd "$(dirname "${BASH_SOURCE[0]:-$0}")" >/dev/null 2>&1 ; pwd -P )"
. "${SCRIPT_DIR}/ffmpeg_env.sh" 

cd ${FFMPEG_PATH}
#./configure --enable-libvpl --enable-vaapi --enable-nonfree
#./configure --enable-libvpl --enable-debug --disable-optimizations --enable-nonfree
./configure --enable-libvpl --enable-debug --enable-nonfree
#./configure --enable-libvpl --enable-nonfree
#./configure --enable-libmfx --enable-nonfree
make -j$(nproc) V=1
