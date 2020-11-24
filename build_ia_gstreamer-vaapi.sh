#!/bin/bash

./autogen.sh --disable-x11 --disable-wayland --disable-gtk-doc --enable-hantro --enable-tbh
make -j$(nproc)
sudo make install
