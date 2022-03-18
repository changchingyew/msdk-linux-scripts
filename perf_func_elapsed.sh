set -x
perf script > perf_script.txt
grep sample_multi_tr perf_script.txt | awk -f perf_elapsed.awk > elapsed_time.txt
perf probe -d probe_libmfxhw64:*
