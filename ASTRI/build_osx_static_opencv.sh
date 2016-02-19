cd ..
mkdir -p build/osx_static
cd build/osx_static

cmake -G "Unix Makefiles" -DBUILD_SHARED_LIBS=OFF -DBUILD_WITH_STATIC_CRT=OFF -C ../../ASTRI/BuildCacheOSX.cmake ./../..
make -j16
make install
