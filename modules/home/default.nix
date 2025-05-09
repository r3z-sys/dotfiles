{inputs, username, host, ...}: {
  imports = [
    # ./hyprland
    ./home.nix
    ./package.nix
    ./git.nix
  ];
}