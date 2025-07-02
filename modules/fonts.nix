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
      (nerdfonts.override {
        fonts = [
          "FiraCode"
          "CascadiaCode"
          "CascadiaMono"
        ];
      })
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
