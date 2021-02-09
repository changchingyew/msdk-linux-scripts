#!/bin/bash
set -x
#Vaiables used
#ipp_dir="ipp"
#cmrt_dir="cmrt_linux"

 #Section to download source code
echo 'This script will compile mfx_transcoder, mfx_player, mfxhw64'
#echo 'Enter your idsid to start with. e.g vsodhi'
#read idsid
echo 'Downloading mdp_msdk-lib project'
echo 'git clone https://github.com/intel-innersource/drivers.gpu.media.sdk.lib.git'
git clone https://github.com/intel-innersource/drivers.gpu.media.sdk.lib.git -b iotg_vsi
echo

echo 'Downloading mdp_msdk-contrib project'
echo 'git clone https://github.com/intel-innersource/drivers.gpu.media.sdk.contrib.git'
git clone https://github.com/intel-innersource/drivers.gpu.media.sdk.contrib.git
echo

echo 'Downloading mdp_msdk-val-tools project'
echo 'git clone https://github.com/intel-innersource/drivers.gpu.media.sdk.val-tools.git'
git clone https://github.com/intel-innersource/drivers.gpu.media.sdk.val-tools.git
echo

echo 'Downloading code base complete sucessfully'
sleep 2
echo

#Section to check for prerequisite
#tar -xvf cmrt-ipp-deps-of-msdk.tar.gz
#echo 'checking for dependencies needed'
#if [ -d "$ipp_dir" ] && [ -d "$cmrt_dir" ] && [ -f "0001-fix-for-build-on-ubuntu.patch" ] ; then
  ### Take action if $DIR exists ###
#  echo "Dependencies present can continue..."
#  sleep 2
#else
#  echo "Error:  ipp and cmrt_linux folders not found. Can not continue compiling"
#  exit 1
#fi
#echo
