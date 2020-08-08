{ config, pkgs, ... }:
{
  imports = [
    ./modules/hosts/default.nix
    ./hardware-configuration.nix
  ];
}
