#!/bin/bash
set -x
export _PREFIX=/mnt/mnt/hdd2/cyew3/msdk/tbh/prefix
autoreconf -f
./configure --disable-x11 --disable-wayland --prefix=$_PREFIX
make -j $(nproc) all
sudo make install
