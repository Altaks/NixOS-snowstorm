{ inputs, config, lib, pkgs, ... }: { 

  environment.systemPackages = with pkgs; [
    # Document generator - https://www.doxygen.nl/index.html
    doxygen
  ];
}