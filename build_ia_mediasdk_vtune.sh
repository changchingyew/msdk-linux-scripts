set -x
export HDDL_ROOT=/opt/intel/hddlunite
#cmake .. -DCMAKE_BUILD_TYPE=release -DMFX_HW_VSI=ON -DMFX_VSI_HDDL=ON -DAPI=latest -DCMAKE_ITT_HOME=/home/kmbhost2/intel/oneapi/vtune/2022.1.0 -DCMAKE_VTUNE_HOME=/home/kmbhost2/intel/oneapi/vtune/2022.1.0 -DENABLE_ITT=ON
cmake .. -DCMAKE_BUILD_TYPE=release -DMFX_HW_VSI=ON -DMFX_VSI_HDDL=ON -DAPI=latest -DCMAKE_VTUNE_HOME=/home/kmbhost2/intel/oneapi/vtune/2022.1.0 -DENABLE_ITT=ON
make -j$(nproc)
