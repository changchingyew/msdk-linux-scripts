#!/bin/bash

./autogen.sh --disable-x11 --disable-wayland --disable-gtk-doc && make -j$(nproc)
sudo make install
