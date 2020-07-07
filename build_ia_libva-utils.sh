#!/bin/bash
set -x
./autogen.sh --disable-x11 --disable-wayland
make -j $(nproc)
sudo make install
