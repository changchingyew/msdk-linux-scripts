#!/bin/bash
# 1 - build the MSDK 
# 2 - copy this script to build folder e.g. MediaSDK/build
# run this script
# Info :- This script will create thb-de-build folder in __bin/Debug folder with all the required libs, binaries and softlinks required to run sample_decode etc.  
 
set -x

rm -rf $(pwd)/__bin/Debug/thb-dev-build
mkdir -p $(pwd)/__bin/Debug/thb-dev-build
export THB_BUILD=$(pwd)/__bin/Debug/thb-dev-build

cp __bin/Debug/lib* $THB_BUILD/
cp __bin/Debug/s* $THB_BUILD/
cp oneVPL/dispatcher/libmfx.so* $THB_BUILD

cd $THB_BUILD
ln -s libmfx.so.2 libmfx.so.1
ln -s libmfxhw64.so.2 libmfxhw64.so.1

