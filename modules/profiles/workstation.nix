{ config, pkgs, ... }:

{
  imports = [
    ../desktops/gnome.nix
    ../packages/workstation.nix
    ../services/workstation.nix
    ../shell/bash.nix
    ../locale/us-east.nix
  ];
}
