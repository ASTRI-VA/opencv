cd ..
mkdir build\windows_vs12_x64
cd build\windows_vs12_x64
cmake -G "Visual Studio 12 2013 Win64" -C ../../ASTRI/BuildCacheWindows.cmake ./../..
cmake --build . --target INSTALL --config Release
cmake --build . --target INSTALL --config Debug