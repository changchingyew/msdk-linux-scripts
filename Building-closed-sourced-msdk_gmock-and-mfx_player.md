Dependencies
1. IPP-CMRT prebuilt tarball \\gar.corp.intel.com\ec\proj\my\isg\ped_sw_gdd\share\MSDK\cmrt-ipp-deps-of-msdk.tar.gz  (link does not work)
1. Access to MediaSDK repo

Build Steps
- Check out msdk-linux-scripts
    - git clone ssh://git@gitlab.devtools.intel.com:29418/OWR/IoTG/GMS/Yocto/Graphics/Media/msdk-linux-scripts.git
- Copy IPP-CMRT prebuilt tarball into msdk-linux-scripts folder, and extract it.
    - cp cmrt-ipp-deps-of-msdk.tar.gz msdk-linux-scripts
- Cd into msdk-linux-scripts and extract the tarball
    - cd msdk-linux-scripts
    - tar -xvf cmrt-ipp-deps-of-msdk.tar.gz
- Check out mdp_msdk-lib & mdp_msdk-contrib
    - git clone git clone ssh://git-ccr-1.devtools.intel.com:29418/mdp_msdk-lib
    - git clone git clone ssh://git-ccr-1.devtools.intel.com:29418/mdp_msdk-contrib
- Eexecute build_ia_mediasdk_close.sh script
    - ./build_ia_mediasdk_close.sh vsi
- Build MediaSDK binaries (mfx_player, mfx_transcoder, msdk_gmock) found at __cmake/intel64.make.debug/__bin/debug directory