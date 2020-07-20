#!/bin/bash
set -x
export _PREFIX=/mnt/mnt/hdd2/cyew3/msdk/tbh/prefix
./configure --disable-x11 --disable-wayland --prefix=$_PREFIX
make -j $(nproc)
sudo make install
