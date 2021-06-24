#meson builddir
#meson builddir -Dgst-plugins-bad:mfx_api=oneVPL --reconfigure
#meson builddir -Dgst-plugins-bad:mfx_api=oneVPL
meson builddir -Dgst-plugins-bad:mfx_api=MSDK --reconfigure
ninja -C builddir
#ninja -C builddir install
