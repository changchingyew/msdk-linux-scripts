sample_multi_transcode -par par_files/hevcparfile 2>&1 | tee test.log

grep "session" test.log | awk '{sum+=$11} END {print sum}'
