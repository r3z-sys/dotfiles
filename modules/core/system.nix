{
  self,
  pkgs,
  lib,
  inputs,
  ...
}:

{
  # system app
  environment.systemPackages = with pkgs; [
    vim
    wget
    kitty
    xdg-desktop-portal
    xdg-desktop-portal-hyprland
    xdg-desktop-portal-gtk
  ];
  # Set your time zone.
  time.timeZone = "Asia/Jakarta";
  i18n.defaultLocale = "en_US.UTF-8";
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "24.11"; # Did you read the comment?
  nix.settings.experimental-features = ["nix-command" "flakes"];
}