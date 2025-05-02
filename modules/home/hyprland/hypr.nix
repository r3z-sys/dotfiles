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
    swappy
    waybar
    wl-clip-persist
    wl-clipboard
    wofi  
  ]);

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland = {
      enable = true;
    };
  };

}