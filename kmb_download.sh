#!/bin/bash
export user=
export password=
set -x
wget -b --no-proxy --no-check-certificate  -nd -nH -r -np --user=$user --password=$password -A '*.img.gz,*.deb,fip-evm.bin' $1
gunzip *.img.gz
