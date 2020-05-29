#Vaiables used
ipp_dir="ipp"
cmrt_dir="cmrt_linux"

#Section to download source code
echo 'This script will compile mfx_transcoder, mfx_player, mfxhw64'
echo 'Enter your idsid to start with. e.g vsodhi'
read idsid
echo 'Downloading mdp_msdk-lib project'
echo 'git clone ssh://'$idsid'@git-ccr-1.devtools.intel.com:29418/mdp_msdk-lib'
git clone ssh://$idsid@git-ccr-1.devtools.intel.com:29418/mdp_msdk-lib
echo 'Downloading mdp_msdk-contrib project'
echo 'git clone ssh://'$idsid'@git-ccr-1.devtools.intel.com:29418/mdp_msdk-contrib'
git clone ssh://$idsid@git-ccr-1.devtools.intel.com:29418/mdp_msdk-contrib
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

#Secition to start code compiling
mv 0001-fix-for-build-on-ubuntu.patch mdp_msdk-lib
cd mdp_msdk-lib
git am 0001-fix-for-build-on-ubuntu.patch
cd ..
echo 'Setting environment vaiables needed'
export MEDIASDK_ROOT=`pwd`
export MFX_HOME=$MEDIASDK_ROOT
export MFX_MDF_PATH=$MEDIASDK_ROOT/cmrt_linux
export CMAKE_VTUNE_HOME=$MEDIASDK_ROOT/mdp_msdk-contrib/itt
export LIBVA_REV=${LIBVA_REV:-"va-unified"}
export PKG_CONFIG_PATH=$MFX_HOME/mdp_msdk-contrib/libva/$LIBVA_REV${PKG_CONFIG_PATH:+":"$PKG_CONFIG_PATH}
export PKG_CONFIG_TOP_BUILD_DIR=$PKG_CONFIG_PATH
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$LIBVA_ROOT
export C_INCLUDE_PATH=$C_INCLUDE_PATH:$LIBVA_ROOT
cp mdp_msdk-lib/builder/CMakeLists.txt ./

perl mdp_msdk-lib/builder/build_mfx.pl --cmake=intel64.make.release --no-warn-as-error
echo
echo 'Compiling mfx_transcoder'
make -C __cmake/intel64.make.release -j 16 mfx_transcoder
echo
echo 'compiling mfx_player'
make -C __cmake/intel64.make.release -j 16 mfx_player
echo
echo 'compiling mfxhw64'
make -C __cmake/intel64.make.release -j 16 mfxhw64
echo 'Compilation successful, you can find bin generated in ./__cmake/intel64.make.release/__bin/release/'

