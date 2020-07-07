#!/bin/bash
set -x
./autogen.sh --disable-x11 --disable-wayland
make -j $(nproc) all
sudo make install
