{
  inputs,
  config,
  lib,
  pkgs,
  ...
}:
{

  environment.systemPackages = with pkgs; [
    obsidian # Obsidian - https://obsidian.md/
    affine # AFFiNE   - https://affine.pro/
  ];
}
