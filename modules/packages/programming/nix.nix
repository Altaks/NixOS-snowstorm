{
  inputs,
  config,
  lib,
  pkgs,
  ...
}:
{

  environment.systemPackages = with pkgs; [
    # Dconf to Nix converter
    dconf2nix

    # Language servers
    nixd
    nil

    # Formatter
    nixfmt-rfc-style

    # Nix documentation generator
    nixdoc
  ];
}
