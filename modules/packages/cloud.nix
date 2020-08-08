{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
 
  environment.systemPackages = with pkgs; [
    terraform
    kubectl
    helm
    packer
    kind
  ];
}
