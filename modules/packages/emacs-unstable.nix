{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    (emacsWithPackagesFromUsePackage { 
      package = emacsUnstable; 
      config = ''
        (package-initialize)
        (use-package exwm)
        (use-package puppet-mode)
	(use-package nix-mode
	  :mode "\\.nix\\'")	
      '';
      alwaysEnsure = true; })
    texlive.combined.scheme-medium
  ];
}
