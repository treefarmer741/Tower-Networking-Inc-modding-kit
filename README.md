# Tower Networking Inc. Modding Kit

This repository is a modding kit that can be used to create mods for the game [Tower Networking Inc](https://store.steampowered.com/app/2939600/Tower_Networking_Inc/). Modding support for the game is implemented with [Godot Sandbox](https://github.com/libriscv/godot-sandbox) using [libriscv](https://libriscv.no/).

Mods are created in C/C++, however this repository also contains the official LuaJIT support mod. Lua mods are preferred as they are easier to develop and are naturally source-available.

Note that modding for the game is still in early design/implementation stage, and any feedback/suggestions is encouraged to make modding the game fun!

## Using Lua based mods

If you want to use a Lua based mods, you will need to manually add the `luajit` support mod first. This may be improved in the future.

You can find the mod in the github releases, or [click here](https://github.com/treefarmer741/Tower-Networking-Inc-modding-kit/releases/early-0) for the latest stable release. Download the luajit file and place it in your mods folder. Refer to [Loading the mod](#loading-the-mod) for further instructions.

If you are using the `beta` branch of the game, you'll likely want to use the ["Continuous (gnu) - beta"](https://github.com/treefarmer741/Tower-Networking-Inc-modding-kit/releases/tag/continuous-gnu-beta) release instead.

## Beta branch

There is a `beta` github branch which should work with the game's `beta` branch on steam.

Changes to the modding-kit go through the beta branch first.

## Example mods

Examples are your friend. To get started, take a look at the following examples:

### 2x BW switches (Lua)

The [2x BW switches](/lua/2x-bandwidth-switches/) mod doubles the bandwidth of every switch when spawned in. The store display the original value!

### Template mod (C/C++)

The [Template mod](/programs/tni-mod-template) is a template that contains the common use scenario for writing a mod in c/c++.

### LuaJIT support mod (C/C++)

The [LuaJIT support mod](/programs/luajit) adds Lua based mods. It is much more complex but may help with things the template doesn't have.

---

## Loading the mod

Mods in the game will be loaded from the user's game directory in alphabetical order.

- Windows: `%APPDATA%\Godot\app_userdata\Tower Networking Inc`

- Linux: `~/.local/share/godot/app_userdata/Tower Networking Inc`

On the user's game directory, you'll observe directories like `saves/` and `logs/`. Place your mod in the `mods/` directory.

For example, to install the `tni-mod-template` mod, place `.zig/tni-mod-template` to `mods/` such that `mods/tni-mod-template/entry.elf` exists.

### Lua mods

If you'd like to use Lua instead, you can download the [pre-built luajit.elf mod](https://github.com/treefarmer741/Tower-Networking-Inc-modding-kit/releases/download/early-0/luajit.elf) from the releases section and place it as `mods/luajit.elf` (directly in the `mods/`) directory. This enables loading of `.lua` mods.

The engine will always first try to load the `luajit.elf` before all mods, so you do not need to worry about the naming.

---

## Building C/C++ mods

Check out the [librisc-v docs](https://libriscv.no/docs/host_langs/godot_integration/godot_docs/cmake#cmake-setup) for more information.

To clone and initialize the repository locally;

```sh
# Ensure you have `git` installed.
git clone https://github.com/treefarmer741/Tower-Networking-Inc-modding-kit.git --branch main
git submodule update --init --recursive
```

### Windows

Make sure the following is installed:

1. [git](https://git-scm.com/install/windows) (version control system, used to clone the repo locally)
2. [CMake](https://cmake.org/download/) (generator for build systems)
3. [Ninja](https://ninja-build.org/) (build system)
4. [ZIG](https://ziglang.org/download/) (RISC-V cross-compilation)

Then in the root of this project, run the command:

```
zig.cmd
```

The built output (a .elf file) will be in the `.zig/<name-of-your-mod>/entry.elf` directory.

### Linux (and WSL2)

Make sure the following is installed:

1. `git` (version control system, used to clone the repo locally)
2. `CMake` (generator for build systems)
3. `Ninja` (build system)
4. `g++-riscv64-linux-gnu-14` (GNU RISC-V compiler)

```sh
# For Debian based systems like Ubuntu;
sudo apt install git cmake ninja-build g++-riscv64-linux-gnu-14
```

Then in the root of this project, run the command:

```sh
./build.cmd
```
