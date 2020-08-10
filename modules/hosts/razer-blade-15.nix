{ config, pkgs, ... }:

{
  imports = [
    ../profiles/workstation.nix
    ../users/light.nix
  ];

  hardware.openrazer.enable = true;

  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      grub.useOSProber = true;
    };

    kernelParams = [ "button.lid_init_state=open" ];
    enableContainers = true;
  };

  networking = {
    hostName = "deathnote2";
    useDHCP = false;
    networkmanager.enable = true;
  };
}
