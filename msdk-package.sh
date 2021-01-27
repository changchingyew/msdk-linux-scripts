#!/bin/bash
set -x

export CUR_HOME=$PWD
export MFX_HOME=$CUR_HOME/opt/intel/onevpl
export MFX_PLUGINS_CONF_DIR=$MFX_HOME/plugins

mkdir -p $MFX_HOME/lib64/mfx
mkdir -p $MFX_HOME/lib64/pkgconfig
mkdir -p $MFX_HOME/share/mfx/samples/_bin
mkdir -p $MFX_HOME/doc

cd $MFX_HOME
ln -s lib64 lib
ln -s lib64/mfx plugins

cd $MFX_HOME/lib64/mfx
ln -s ../../share/mfx/plugins.cfg .

cd $CUR_HOME/../../../..
cp install_media.sh $CUR_HOME
cp env.sh env_xlink.sh env_hddl.sh connection_xlink.cfg connection_hddl.cfg $MFX_HOME

cd $CUR_HOME
mv libmfxhw64.so* $MFX_HOME/lib64/
mv libmfx.so* $MFX_HOME/lib64/
mv sample_* simple_* $MFX_HOME/share/mfx/samples/_bin
mv ../../plugins.cfg $MFX_HOME/share/mfx/ 
mv libmfx.pc $MFX_HOME/lib64/pkgconfig/

cd $MFX_HOME/lib64/
ln -s libmfx.so.2 libmfx.so.1
ln -s libmfxhw64.so.2 libmfxhw64.so.1

cd $CUR_HOME
MFX_PKG_FILES="install_media.sh opt"
COMMIT_ID=$(git rev-parse --short HEAD)
tar jvcf onevpl_${COMMIT_ID}.tbz $MFX_PKG_FILES

if [ "$1" != "no_clean" ]; then
	rm -rf $MFX_PKG_FILES
fi
