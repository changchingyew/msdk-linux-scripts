set -x
cd /home/kmbhost2/intel/oneapi/ && source setvars.sh
cd /opt/intel/vpu_accelerator_samples/hddlunite/
source env_host.sh
cd bin && ./SetHDDLMode -m b
cd /opt/intel/vpu_accelerator_samples/bypass/hvasample && source prepare_run.sh
cd /home/kmbhost2/msdk_testbuild/msdk2/build/__bin/release
vtune -collect hotspots -result-dir /home/kmbhost2/msdk_testbuild/r001hs /home/kmbhost2/msdk_testbuild/msdk2/build/__bin/release/sample_multi_transcode -par 1parfile
