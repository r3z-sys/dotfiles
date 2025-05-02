{ inputs, pkgs, ... }:
{
  # Hyprland package
  home.packages = (with pkgs; [ 
    brightnessctl 
    cliphist
    grim
    htop
    hyprpaper
    pavucontrol
    slurp
    waybar
    wl-clip-persist
    wofi  
  ]);

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland = {
      enable = true;
    }
  }

}