set -x
cmake .. -DCMAKE_INSTALL_PREFIX=/home/root/vpl_root/ -DCMAKE_BUILD_TYPE=Debug
#cmake --build . --config Debug --target install
cmake --build . --config Debug --verbose
