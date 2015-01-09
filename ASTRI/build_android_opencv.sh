#!/bin/sh

#check if ANDROID_NDK is defined
if [ -z "$ANDROID_NDK" ]; then
echo "ANDROID_NDK environment variable not defined!"
echo "Please set it to point to your NDK location"
exit
fi

cd ..
mkdir -p build/android_arm
cd build/android_arm

cmake -C ../../ASTRI/BuildCacheAndroid.cmake ./../..
make -j12
make install
