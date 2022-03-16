set -x
perf script > perf_script.txt
awk ' NR == 1{split($4, t, /:/); old = t[1]; next}     # if 1st line
{split($4, t, /:/); elapsed=(t[1] - old)*1000000 ; print elapsed, " usec"; old = t[1]}  # else...' perf_script.txt > elapsed_time.txt
#perf probe -d probe_libmfxhw64:*
