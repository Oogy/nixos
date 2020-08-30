{
  users.users.light = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "docker" ]; # Enable ‘sudo’ for the user.
    hashedPassword = "$6$O8x9qUM1Vkf$.NWkrOMvqLRwg0DlCYkQQ9Fzc1KuWopnaPzalVXhdONF.JukfOnNXjDWAv8QMWjEqfgxbj3et07eyFQoxcU0H.";
  };
}
