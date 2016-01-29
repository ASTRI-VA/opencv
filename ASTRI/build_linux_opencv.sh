cd ..
mkdir -p build/linux
cd build/linux

cmake -G "Unix Makefiles" -C ../../ASTRI/BuildCacheLinux.cmake ./../..
make -j16
make install
