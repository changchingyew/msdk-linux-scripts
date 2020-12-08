A simple script msdk-install.sh to create default MSDK Linux directories and symbolic links 

Steps
1. Check out msdk-linux-scripts
1. git clone ssh://git@gitlab.devtools.intel.com:29418/OWR/IoTG/GMS/Yocto/Graphics/Media/msdk-linux-scripts.git
1. Change into MediaSDK build output directory
1. cd MediaSDK/build/__bin/Debug/
1. Execute msdk-package.sh and MediaStack.tbz would be generated

Install MSDK package
1. Untar MediaStack.tbz
1. Execute install_media.sh as root