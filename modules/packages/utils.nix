{ pkgs, ... }:
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
    dmidecode
    acpi
    pwgen
    file
    socat
    libinput
    feh
    compton
    qutebrowser
    lsof
    rsync
    lm_sensors
    wineWowPackages.stable
    vagrant
    virtualbox
    python38Packages.pip
    pipenv
    thunderbolt
    bolt
  ];
}
