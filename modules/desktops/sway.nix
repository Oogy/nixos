{ config, pkgs, lib, ... }:
{
  programs.sway = {
    enable = true;
    extraPackages = with pkgs; [
      swaylock # lockscreen
      swayidle
      xwayland # for legacy apps
      waybar # status bar
      mako # notification daemon
      kanshi # autorandr
    ];
  };

  environment.etc {
    "sway/config".text = ''

    '';

    "xdg/waybar/config".text = ''

    '';

    "xdg/waybar/style.css".text = ''

    '';
  };
}
