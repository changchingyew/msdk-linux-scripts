#!/bin/bash
set -x
./configure --enable-libvpl --enable-vaapi --enable-nonfree
make -j$(nproc) V=1
