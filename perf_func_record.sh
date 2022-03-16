if [[ $# -ne 2 ]]; then
    echo "Usage:$0 function_alias function_name"
    exit 2
fi
set -x
perf probe -x ~/data/msdkbin_patch/libmfxhw64.so.1.34 -a $1=$2 --no-demangle
perf probe -x ~/data/msdkbin_patch/libmfxhw64.so.1.34 -a $1=$2%return --no-demangle
perf record -e probe_libmfxhw64:*
