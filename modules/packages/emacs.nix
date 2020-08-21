{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    (emacsWithPackagesFromUsePackage { 
      package = emacsGit; 
      config = ''
        (package-initialize)
        (use-package exwm)
        (use-package puppet-mode)
        (use-package elpa-flycheck)
      '';
      alwaysEnsure = true; })
  ];
}