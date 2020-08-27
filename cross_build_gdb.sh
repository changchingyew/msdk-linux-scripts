#!/bin/bash
set -x

source /usr/local/oecore-x86_64/environment-setup-aarch64-ese-linux
#export CCFLAGS="-I/usr/local/oecore-x86_64/sysroots/aarch64-ese-linux/usr/include/"
#export LDFLAGS="$LDFLAGS -static"
#export CC="$CC $CCFLAGS $LDFLAGS"

./configure --build=host=x86_64-unknown-linux-gnu --host=aarch64-linux-gnu --target=aarch64-linux-gnu --enable-static --enable-tui
make
