{ config, pkgs, lib, ... } : {

  imports = [
    ./android.nix
    ./c-cpp.nix
    ./db.nix
    ./debugging.nix
    ./documentation.nix
    ./embedded.nix
    ./flutter.nix
    ./go.nix
    ./grammars.nix
    ./java.nix
    ./javascript.nix
    ./protocols.nix
    ./python.nix
    ./rust.nix
    ./testing.nix
  ];

}