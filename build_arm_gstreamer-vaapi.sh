#!/bin/bash

set -x

if [ "$1" == "kmb" ]; then
	./autogen.sh --disable-x11 --disable-wayland --disable-gtk-doc --enable-hantro
	make -j$(nproc)
	make install
elif [ "$1" == "tbh" ]; then
	./autogen.sh --disable-x11 --disable-wayland --disable-gtk-doc --enable-hantro --enable-tbh
	make -j$(nproc)
	make install
else
	echo "Usage: $0 kmb/tbh"
fi
