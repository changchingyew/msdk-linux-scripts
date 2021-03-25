#!/bin/bash
DIR=$(dirname $(readlink -f "${BASH_SOURCE[0]}" 2>/dev/null||echo $0))

source $DIR/env.sh

export CONFIG_PATH=$DIR/connection_hddl.cfg

sudo /opt/intel/hddlunite/bin/hddl_scheduler_service &

sleep 3
/opt/intel/hddlunite/bin/SetHDDLMode -m b
