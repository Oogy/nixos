{ config, pkgs, ... }:

{
  imports = [
    ./docker.nix
    ./qemu.nix
    ./ssh.nix
  ];
}
