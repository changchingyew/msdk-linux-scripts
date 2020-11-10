#!/bin/bash

#set -x
source env.sh

export MEDIASDK_ROOT=$_MSDK_WORKDIR/validation_tool
export MEDIASDK_STREAMS=$_MSDK_WORKDIR/streams

export PATH=$_MSDK_WORKDIR/validation_tool/msdk_perl/perl-5.22.2/gcc2.14/lin_x64::$PATH
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
