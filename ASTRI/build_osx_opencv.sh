cd ..
mkdir -p build/osx
cd build/osx

cmake -G "Unix Makefiles" -C ../../ASTRI/BuildCacheOSX.cmake ./../..
make -j16
make install

cd ..
mkdir osx_unity
cd osx_unity
cmake -G "Unix Makefiles" -C ../../ASTRI/BuildCacheOSXUnity.cmake ./../..
make -j16
make install

cd ..
mkdir osx_unity5
cd osx_unity5
cmake -G "Unix Makefiles" -C ../../ASTRI/BuildCacheOSXUnity5.cmake ./../..
make -j16
make install