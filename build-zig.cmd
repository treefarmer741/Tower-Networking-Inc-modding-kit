@echo off
set HERE=%cd%
if not exist .zig mkdir .zig
pushd .zig
cmake .. -G Ninja -DCMAKE_COLOR_DIAGNOSTICS=ON -DCMAKE_TOOLCHAIN_FILE=%HERE%\cmake\zig-toolchain.cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo -DSTRIPPED=OFF
cmake --build . -j
set BUILD_ERRORLEVEL=%ERRORLEVEL%
popd

exit /b %BUILD_ERRORLEVEL%
