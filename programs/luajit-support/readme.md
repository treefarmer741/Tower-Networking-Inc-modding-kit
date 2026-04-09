# LuaJIT support mod
Adds support for LuaJIT based mods.  

## Building
This mod should be built with GCC on linux (using `./build.sh`).  
Building with zig causes any lua errors to go straight to a lua PANIC and can not be handled.  

LuaJIT doesn't officially support RISCV64 yet, but there is a fork to do so from https://github.com/plctlab/LuaJIT/tree/v2.1-riscv64-pr  
We use that repo for LuaJIT to work under godot-sandbox which uses RISCV64.  

Building **`libluajit.a`** from source;  
- This must be built on linux (either through WSL on windows, or on a Linux machine).
- Ensure you have `make` available.
- Ensure you have `riscv64-linux-gnu-gcc-14` available.
- Delete `./LuaJIT/` if it already exists, to ensure a clean build.
- `git clone https://github.com/plctlab/LuaJIT.git -b v2.1-riscv64-pr`
- `cd ./LuaJIT/src`
- `make CROSS=riscv64-linux-gnu- CC=gcc-14`
- This will create `libluajit.a`, which you can now replace the old version with.

Building **`zig-libluajit.a`** from source;
- This must be built on linux (either through WSL on windows, or on a Linux machine).
- Ensure you have `make` available.
- Ensure you have [`zig`](https://ziglang.org/learn/getting-started/) available.
- Delete `./LuaJIT/` if it already exists, to ensure a clean build.
- `git clone https://github.com/plctlab/LuaJIT.git -b v2.1-riscv64-pr`
- `cd ./LuaJIT/src`
- `make CC="zig cc" TARGET_FLAGS="-target riscv64-linux-musl"`
- This will error due to `libluajit.so`, this can be ignored as we don't need it, as long as the `libluajit.a` is created.
- Rename `libluajit.a` to `zig-libluajit.a` and replace the old version with it.
