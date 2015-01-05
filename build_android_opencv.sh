#!/bin/sh

#check if ANDROID_NDK is defined
if [ -z "$ANDROID_NDK" ]; then
echo "ANDROID_NDK environment variable not defined!"
echo "Please set it to point to your NDK location"
exit
fi

cd platforms
./scripts/cmake_android_arm.sh
cd build_android_arm
make -j12
mkdir install
cmake install . -DCMAKE_INSTALL_PREFIX=./install
make install
