cd ..
mkdir build\windows_vs12
cd build\windows_vs12
cmake -G "Visual Studio 12 2013" -C ../../ASTRI/BuildCacheWindows.cmake ./../..
cmake --build . --target INSTALL --config Release
cmake --build . --target INSTALL --config Debug