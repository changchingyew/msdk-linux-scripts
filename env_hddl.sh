#!/bin/bash
DIR=$(dirname $(readlink -f "${BASH_SOURCE[0]}" 2>/dev/null||echo $0))

source $DIR/env.sh

export CONFIG_PATH=$DIR/connection_hddl.cfg

sudo hddl_scheduler_service &
