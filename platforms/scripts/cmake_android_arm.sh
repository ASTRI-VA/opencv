#!/bin/sh
cd `dirname $0`/..

mkdir -p build_android_arm
cd build_android_arm

cmake -DANDROID_ABI="armeabi-v7a with NEON" -DCMAKE_BUILD_WITH_INSTALL_RPATH=ON -DCMAKE_TOOLCHAIN_FILE=../android/android.toolchain.cmake $@ ../..
