cd ..
mkdir build/osx
cd build/osx

cmake -G "Unix Makefiles" -C ../../ASTRI/BuildCacheOSX.cmake ./../..
make -j8
make install