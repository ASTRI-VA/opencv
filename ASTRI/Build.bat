cv ..
mkdir build/windows_vs10
cd build/windows_vs10
cmake -G "Visual Studio 10 2010" -C ../../ASTRI/BuildCacheWindows.cmake ./../..
cmake --build . --target INSTALL --config Release
cmake --build . --target INSTALL --config Debug