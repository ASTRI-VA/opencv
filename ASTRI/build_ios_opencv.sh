#!/bin/sh

python ../platforms/ios/build_framework.py ../build/ios_arm BuildCacheiOS.cmake
python ../platforms/ios/build_framework.py ../build/ios_arm_unity4 BuildCacheiOSUnity4.cmake
python ../platforms/ios/build_framework.py ../build/ios_arm_unity5 BuildCacheiOSUnity5.cmake
