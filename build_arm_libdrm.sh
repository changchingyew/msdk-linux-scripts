#!/bin/bash
set -x
export _PREFIX=/home/root/prefix
./autogen.sh --enable-intel
./configure --disable-x11 --disable-wayland --prefix=$_PREFIX
make -j $(nproc) all
sudo make install
