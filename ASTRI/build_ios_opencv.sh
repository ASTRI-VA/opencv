#!/bin/sh

python ../platforms/ios/build_framework.py ../build/ios_arm BuildCacheiOS.cmake
python ../platforms/ios/build_framework.py ../build/ios_arm_unity BuildCacheiOSUnity.cmake