#!/bin/bash
set -x
source /usr/local/oecore-x86_64/environment-setup-aarch64-ese-linux
export _PREFIX=$PWD/../prefix
export PKG_CONFIG_PATH=$_PREFIX/lib/pkgconfig
export LIBVA_DRIVERS_PATH=$_PREFIX/lib
export LD_LIBRARY_PATH=$_PREFIX/lib
mkdir -p $_PREFIX
./configure $CONFIGURE_FLAGS --disable-x11 --disable-wayland --enable-vsihw --enable-vsibo --prefix=$_PREFIX
make -j $(nproc) all
make install
