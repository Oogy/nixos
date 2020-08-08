{ config, pkgs, ... }:        

{
  services = {
    xserver = {
      enable = true;
      displayManager.gdm.enable = true;
      desktopManager.gnome3.enable = true;
      libinput.enable = true;
    };

    udev.packages = with pkgs; [ gnome3.gnome-settings-daemon ];
    dbus.packages = with pkgs; [ gnome2.GConf ];
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    gnome3.gnome-tweaks
    gnome3.gnome-shell-extensions
    gnomeExtensions.caffeine
    gnomeExtensions.drop-down-terminal
  ];
}
