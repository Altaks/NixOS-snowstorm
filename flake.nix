{
  description = "NixOS Snowstorm configurations manifest";

  # Packages providers list
  inputs = {

    # NixOS packages from stable 25.05 and unstable
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    # Home Manager for NixOS 25.05
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Nix community flakes
    nixos-conf-editor.url = "github:snowfallorg/nixos-conf-editor";
    nix-software-center.url = "github:snowfallorg/nix-software-center";
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
  };

  outputs =
    {
      self,
      nixpkgs,
      nixos-hardware,
      ...
    }@inputs:
    let
      inherit (self) outputs;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      forAllSystems = nixpkgs.lib.genAttrs [
        "aarch64-linux"
        "i686-linux"
        "x86_64-linux"
        "aarch64-darwin"
        "x86_64-darwin"
      ];
    in
    {
      nixosConfigurations = {

        hantrox = nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit inputs;
          };
          modules = [
            ./configuration.nix
            ./modules/drivers/gpu/nvidia/nvidia-stable.nix
          ];
        };
      };
    };
}
