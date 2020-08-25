#!/bin/bash
set -x
#Vaiables used
ipp_dir="ipp"
cmrt_dir="cmrt_linux"

 #Section to download source code
echo 'This script will compile mfx_transcoder, mfx_player, mfxhw64'
echo 'Enter your idsid to start with. e.g vsodhi'
read idsid
echo 'Downloading mdp_msdk-lib project'
echo 'git clone ssh://'$idsid'@git-ccr-1.devtools.intel.com:29418/mdp_msdk-lib'
git clone ssh://$idsid@git-ccr-1.devtools.intel.com:29418/mdp_msdk-lib -b dev/iotg_vsi
echo 'Downloading mdp_msdk-contrib project'
echo 'git clone ssh://'$idsid'@git-ccr-1.devtools.intel.com:29418/mdp_msdk-contrib'
git clone ssh://$idsid@git-ccr-1.devtools.intel.com:29418/mdp_msdk-contrib
echo 'git clone ssh://$idsid@git-ccr-1.devtools.intel.com:29418/mdp_msdk-val-tools'
git clone ssh://$idsid@git-ccr-1.devtools.intel.com:29418/mdp_msdk-val-tools
echo 'Downloading code base complete sucessfully'
sleep 2
echo

#Section to check for prerequisite
tar -xvf cmrt-ipp-deps-of-msdk.tar.gz
echo 'checking for dependencies needed'
if [ -d "$ipp_dir" ] && [ -d "$cmrt_dir" ] && [ -f "0001-fix-for-build-on-ubuntu.patch" ] ; then
  ### Take action if $DIR exists ###
  echo "Dependencies present can continue..."
  sleep 2
else
  echo "Error:  ipp and cmrt_linux folders not found. Can not continue compiling"
  exit 1
fi
echo
