#!/bin/bash
export MFX_HOME=/opt/intel/onevpl
export PATH=$MFX_HOME/bin:$MFX_HOME/share/mfx/samples/_bin:$PATH
export LD_LIBRARY_PATH=$MFX_HOME/lib64:$MFX_HOME/lib64/mfx:$LD_LIBRARY_PATH

export CONFIG_PATH=$DIR/connection_hddl.cfg
