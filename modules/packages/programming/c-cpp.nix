{ inputs, config, lib, pkgs, ... }: { 

  environment.systemPackages = with pkgs; [

    # GCC Compiler - https://gcc.gnu.org/
    gcc

    # CMake compiler - https://cmake.org/
    cmake
    gnumake

    # Clang
    clang

    # Ninja build system - https://ninja-build.org/manual.html
    ninja

    # Visual Code Package Manager for C/C++ packages - https://vcpkg.io/en/
    vcpkg

    # Faster linker
    mold
  ];
}