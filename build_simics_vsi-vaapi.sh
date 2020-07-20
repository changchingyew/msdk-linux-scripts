#!/bin/bash
set -x
export _PREFIX=/mnt/mnt/hdd2/cyew3/msdk/tbh/prefix
export PKG_CONFIG_PATH=$_PREFIX/lib/pkgconfig
export LIBVA_DRIVERS_PATH=$_PREFIX/lib
export LD_LIBRARY_PATH=$_PREFIX/lib
./configure --disable-x11 --disable-wayland --enable-vsihw --enable-vsibo --prefix=$_PREFIX
make -j $(nproc) all
sudo make install
