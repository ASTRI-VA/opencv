mkdir build
cd build
cmake -G "Visual Studio 10 2010" -C ../BuildCacheWindows.cmake ./..
cmake --build . --target INSTALL