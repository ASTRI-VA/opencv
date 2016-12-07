echo off

IF "%ANDROID_NDK%" == "" (
	echo ANDROID_NDK environment variable not defined!
	echo Please set it to point to your NDK location
	exit /b
) else (
	echo Found ANDROID_NDK
)

IF "%ANDROID_SDK%" == "" (
	echo ANDROID_SDK environment variable not defined!
	echo Please set it to point to your SDK location
	exit /b
) else (
	echo Found ANDROID_SDK
)


WHERE ant
IF %ERRORLEVEL% NEQ 0 (
    ECHO ant is required and was not found!
    exit/b
)

cd ..
mkdir build\android_arm
cd build\android_arm

REM path to make (windows-x86_64\bin\make.exe) may be different on 32 bit windows

cmake -C ..\..\ASTRI\BuildCacheAndroid.cmake -G"MinGW Makefiles" -DCMAKE_MAKE_PROGRAM=%ANDROID_NDK%\prebuilt\windows-x86_64\bin\make.exe .\..\..
%ANDROID_NDK%\prebuilt\windows-x86_64\bin\make.exe -j12
%ANDROID_NDK%\prebuilt\windows-x86_64\bin\make.exe install
