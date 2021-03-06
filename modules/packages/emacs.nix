{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    (emacsWithPackagesFromUsePackage { 
      package = emacsGit; 
      config = ''
        (package-initialize)
        (use-package exwm)
        (use-package puppet-mode)
        (use-package company-mode)
	(use-package nix-mode
	  :mode "\\.nix\\'")	
      '';
      alwaysEnsure = true; })
  ];
}
