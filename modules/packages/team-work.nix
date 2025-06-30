{ inputs, config, lib, pkgs, ... }: { 

  environment.systemPackages = with pkgs; [
    # Prism Launcher / MultiMC alternative for Minecraft related teamwork - https://prismlauncher.org/
    prismlauncher
    # Discord
    discord
  ];
}