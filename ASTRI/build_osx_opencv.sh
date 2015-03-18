cd ..
mkdir -p build/osx
cd build/osx

cmake -G "Unix Makefiles" -C ../../ASTRI/BuildCacheOSX.cmake ./../..
make -j8
make install

cd ..
mkdir osx_unity
cd osx_unity
cmake -G "Unix Makefiles" -C ../../ASTRI/BuildCacheOSXUnity.cmake ./../..
make -j8
make install
