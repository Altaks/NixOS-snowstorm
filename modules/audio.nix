{
  inputs,
  config,
  lib,
  pkgs,
  ...
}:
{

  # Enable sound with pipewire.
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    # Compatibility with alsa
    alsa.enable = true;
    alsa.support32Bit = true;
    # Compatibility with pulseaudio
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  environment.systemPackages = with pkgs; [

    # Sound Open Firmware
    sof-firmware
    glxinfo
  ];

}
