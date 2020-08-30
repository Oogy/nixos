{
  nixpkgs.overlays = [
    (import (builtins.fetchTarball {
      #url = https://github.com/nix-community/emacs-overlay/archive/master.tar.gz;
      url = https://github.com/nix-community/emacs-overlay/archive/5d1077b8d739cd9b9214c0ed36c8a9a81d707c7b.tar.gz;
    }))
  ];
}
