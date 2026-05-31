export CC="riscv64-linux-gnu-gcc-14"
export CXX="riscv64-linux-gnu-g++-14"

mkdir -p .build
pushd .build
cmake .. -G Ninja -DCMAKE_COLOR_DIAGNOSTICS=ON -DCMAKE_C_COMPILER=$CC -DCMAKE_CXX_COMPILER=$CXX -DCMAKE_BUILD_TYPE=RelWithDebInfo -DSTRIPPED=OFF
cmake --build . -j
BUILD_EXIT_CODE=$?
popd

exit $BUILD_EXIT_CODE
