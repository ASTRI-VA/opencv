cd ..
mkdir build\windows_static
cd build\windows_static

cmake -G "Visual Studio 12 2013" -DBUILD_SHARED_LIBS=OFF -DBUILD_WITH_STATIC_CRT=OFF -C ../../ASTRI/BuildCacheWindows.cmake ./../..
cmake --build . --target INSTALL --config Release
cmake --build . --target INSTALL --config Debug