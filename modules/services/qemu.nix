{ config, pkgs, ... }:

{
  boot = {
    kernelModules = [ "kvm-intel" ];
  };

  virtualisation.libvirtd.enable = true;
}
