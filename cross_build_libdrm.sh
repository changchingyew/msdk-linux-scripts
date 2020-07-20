#!/bin/bash
set -x
source /usr/local/oecore-x86_64/environment-setup-aarch64-ese-linux
autoreconf -f
export _PREFIX=$PWD/../prefix
mkdir -p $_PREFIX
./configure $CONFIGURE_FLAGS --prefix=$_PREFIX --disable-x11 --disable-wayland
make -j $(nproc) all
make install
