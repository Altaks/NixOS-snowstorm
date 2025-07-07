{
  inputs,
  config,
  lib,
  pkgs,
  ...
}:
{

  # Install some nerd fonts for pretty characters display
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      fira-code
      fira-sans
      vistafonts
      roboto
      nerd-fonts.caskaydia-mono
      nerd-fonts.caskaydia-cove
      nerd-fonts.fira-mono
      nerd-fonts.fira-code
    ];
    fontconfig = {
      defaultFonts = {
        serif = [
          "roboto-serif"
          "serif"
        ];
        sansSerif = [
          "Roboto"
          "Fira Sans"
          "sans-serif"
        ];
        monospace = [
          "CascadiaCode"
          "Fira Code"
          "monospace"
        ];
      };
    };
  };

}
