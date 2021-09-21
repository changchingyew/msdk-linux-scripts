#!/bin/bash
SCRIPT_DIR="$( cd "$(dirname "${BASH_SOURCE[0]:-$0}")" >/dev/null 2>&1 ; pwd -P )"
. "${SCRIPT_DIR}/gst_env.sh" 

#mkdir builddir
meson builddir -Dprefix=/media-usb/gstreamer/gst_root
#meson builddir -Drtsp=disabled --reconfigure
#meson builddir -Dprefix=/media-usb/gstreamer/gst_root -Dmfx_api=oneVPL --reconfigure
#meson builddir -Dprefix=/media-usb/gstreamer/gst_root -Dmfx_api=MSDK --reconfigure
ninja -C builddir && ninja -C builddir install
