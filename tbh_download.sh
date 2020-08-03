#!/bin/bash
export user=
export password=
set -x
wget --no-proxy --no-check-certificate -nd -nH -r -np --user=$user --password=$password -A '*.img.gz,*.bin,*.dtb xlink-*.zip' $1
gunzip *.img.gz
