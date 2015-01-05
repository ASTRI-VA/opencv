#!/bin/sh
# build opencv framework with both default and unity versions
# unity version uses libstdc and has some libraries like png and jpeg disabled

python platforms/ios/build_framework.py platforms/build_ios_arm
python platforms/ios/build_framework.py platforms/build_ios_arm_unity -unity
