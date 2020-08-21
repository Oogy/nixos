{ pkgs, ... }:
{
  imports = [
    ./modules/hosts/razer-blade-stealth.nix
    ./hardware-configuration.nix
  ];
}
