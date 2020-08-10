{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
 
  environment.systemPackages = with pkgs; [
    wget 
    vim
    nix 
    firefox
    lastpass-cli
    htop 
    git
    terminator
    tmux
    tree
    jq
    bind
    nmap
    whois
    unzip
    emacs
    dmidecode
  ];
}
