set -x
perf probe -x ~/data/msdkbin_patch/libmfxhw64.so.1.34 -F --no-demangle --filter '*' > perf_msdk_funcs.txt
