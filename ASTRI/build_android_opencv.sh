#!/bin/sh

#check if ANDROID_NDK is defined
if [ -z "$ANDROID_NDK" ]; then
echo "ANDROID_NDK environment variable not defined!"
echo "Please set it to point to your NDK location"
exit
fi

#check if ANDROID_SDK is defined
if [ -z "$ANDROID_SDK" ]; then
echo "ANDROID_SDK environment variable not defined!"
echo "Please set it to point to your SDK location"
exit
fi

cd ..
mkdir -p build/android_arm
cd build/android_arm

cmake -C ../../ASTRI/BuildCacheAndroid.cmake ./../..
make -j12
make install
