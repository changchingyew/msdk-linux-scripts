#!/bin/bash
set -x

export CUR_HOME=$PWD
export MFX_HOME=$CUR_HOME/opt/intel/mediasdk
export MFX_PLUGINS_CONF_DIR=$MFX_HOME/plugins

mkdir -p $MFX_HOME/lib64/mfx
mkdir -p $MFX_HOME/lib64/pkgconfig
mkdir -p $MFX_HOME/share/mfx/samples/_bin
mkdir -p $MFX_HOME/bin
mkdir -p $MFX_HOME/doc
mkdir -p $MFX_HOME/include

cd $MFX_HOME
ln -s lib64 lib
ln -s lib64/mfx plugins

cd $MFX_HOME/lib64/mfx
ln -s ../../share/mfx/plugins.cfg .

cd $CUR_HOME
mv libmfxhw64.so* libmfx.so* $MFX_HOME/lib64/
mv libmfx_hevc* libmfx_vp9d_hw64.so $MFX_HOME/lib64/mfx
mv sample_* simple_* $MFX_HOME/share/mfx/samples/_bin
mv ../../plugins.cfg $MFX_HOME/share/mfx/ 
mv libmfx.pc $MFX_HOME/lib64/pkgconfig/

MFX_PKG_FILES="install_media.sh opt"
tar jvcf MediaStack.tbz $MFX_PKG_FILES

if [ "$1" != "no_clean" ]; then
	rm -rf $MFX_PKG_FILES
fi
