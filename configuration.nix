{ pkgs, ... }:
{
  imports = [
    ./modules/hosts/vbox.nix
    ./hardware-configuration.nix
  ];
}
