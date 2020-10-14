#!/bin/bash

source $PWD/env.sh

export CONFIG_PATH=$PWD/connection_unite.cfg

hddl_scheduler_service &
