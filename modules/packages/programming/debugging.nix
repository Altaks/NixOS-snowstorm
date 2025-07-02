{
  inputs,
  config,
  lib,
  pkgs,
  ...
}:
{

  programs.bcc.enable = true;
  programs.sysdig.enable = !pkgs.stdenv.isAarch64;

  # allow perf as user
  boot.kernel.sysctl."kernel.perf_event_paranoid" = -1;
  boot.kernel.sysctl."kernel.kptr_restrict" = lib.mkForce 0;

  # so perf can find kernel modules
  systemd.tmpfiles.rules = [
    "L /lib - - - - /run/current/system/lib"
  ];

  environment.systemPackages = with pkgs; [
    # Memory debugging & profiling - https://valgrind.org/
    valgrind

    # Decompiler - https://cutter.re/
    cutter

    # GNOME Character Map - https://wiki.gnome.org/Apps(2f)Gucharmap.html
    gucharmap

    # System trace
    strace
  ];
}
