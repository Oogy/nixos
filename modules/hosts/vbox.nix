{ config, pkgs, ... }:
{
  imports = [
    ../profiles/workstation.nix
    ../users/light.nix
  ];

  virtualisation.virtualbox.guest.enable = true;

  boot.loader.grub = {
    device = "/dev/sda";
  };

  networking = {
    hostName = "deathnote-virt";
    useDHCP = false;
    networkmanager.enable = true;
  };
}
