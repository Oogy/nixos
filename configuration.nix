{ pkgs, ... }:
{
  imports = [
    ./modules/hosts/t480.nix
    ./hardware-configuration.nix
  ];
}
