{inputs, username, host, ...}: {
  imports = [
    ./hyprland
    ./home.nix
    ./git.nix
  ];
}