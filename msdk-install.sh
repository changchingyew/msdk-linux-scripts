#!/bin/bash
set -x

export MFX_HOME=/opt/intel/mediasdk
export MFX_PLUGINS_CONF_DIR=$MFX_HOME/plugins

sudo mkdir -p $MFX_HOME/lib64/mfx
sudo mkdir -p $MFX_HOME/lib64/pkgconfig
sudo mkdir -p $MFX_HOME/share/mfx/samples/_bin
sudo mkdir -p $MFX_HOME/bin
sudo mkdir -p $MFX_HOME/doc
sudo mkdir -p $MFX_HOME/include

cd $MFX_HOME
sudo ln -s lib64 lib
sudo ln -s lib64/mfx plugins

cd $MFX_HOME/lib64/mfx
sudo ln -s ../../share/mfx/plugins.cfg .
