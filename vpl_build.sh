#!/bin/bash
set -x
#cmake .. -DCMAKE_INSTALL_PREFIX=/usr/local -DCMAKE_BUILD_TYPE=Debug
cmake .. -DCMAKE_INSTALL_PREFIX=/home/root/vpl_root/ -DCMAKE_BUILD_TYPE=Debug
cmake --build . --config Debug --verbose
#cmake --build . --config Debug --target install
