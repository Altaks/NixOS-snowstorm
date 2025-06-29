{ inputs, config, lib, pkgs, ... }: { 

  environment.systemPackages = with pkgs; [
    # Open any media
    vlc                          # VLC - https://www.videolan.org/vlc/
    
    # Spotify because i need it
    spotify                      # Spotify - https://open.spotify.com/
    spotify-tray

    # Audacity
    audacity                     # Audacity - https://www.audacityteam.org/
  ];
}