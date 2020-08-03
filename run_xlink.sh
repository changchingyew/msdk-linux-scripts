#!/bin/bash

source $PWD/run_env.sh

export CONFIG_PATH=$PWD/connection_xlink.cfg

/home/root/vaapi_bypass/build_kmb/hddl_bypass_shim xlink
