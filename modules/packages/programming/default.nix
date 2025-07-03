{
  config,
  pkgs,
  lib,
  ...
}:
{

  imports = [
    ./android.nix
    ./c-cpp.nix
    ./db.nix
    ./debugging.nix
    ./devops.nix
    ./documentation.nix
    ./embedded.nix
    ./flutter.nix
    ./go.nix
    ./grammars.nix
    ./java.nix
    ./javascript.nix
    ./nix.nix
    ./protocols.nix
    ./python.nix
    ./rust.nix
    ./testing.nix
  ];

}
