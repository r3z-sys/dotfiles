{ inputs, ... }:
{
  imports = [
    ./config.nix
    ./gtk.nix
    ./hypr.nix
    ./variable.nix
  ];
}