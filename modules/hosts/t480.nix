{ config, pkgs, ... }:
{
  imports = [
    ../profiles/workstation.nix
    ../users/commander.nix
  ];

  services = {
    undervolt = {
      enable = true;
      coreOffset = -75;
      gpuOffset = -50;
    };

    fwupd = {
      enable = true;
    };

    hardware = {
      bolt.enable = true;
    };
  };

  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      grub.useOSProber = true;
    };

    #kernelParams = [ ];
    enableContainers = true;
  };

  networking = {
    hostName = "c2";
    useDHCP = false;
    networkmanager.enable = true;
  };
}
