{
  inputs,
  config,
  lib,
  pkgs,
  ...
}:
{

  environment.systemPackages = with pkgs; [
    # Android development - https://developer.android.com/
    android-studio
    android-tools
  ];

  programs.adb.enable = true;
  programs.nix-ld.enable = true;

  services.udev.packages = [
    pkgs.android-udev-rules
  ];

  environment.sessionVariables = {
    ANDROID_HOME = "/home/altaks/Android/Sdk";
  };
}
