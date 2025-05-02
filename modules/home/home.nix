{
  inputs,
  pkgs,
  host,
  ...
}:
{
  programs.vscode.enable = true;
  home.packages = (with pkgs; [ 
    brightnessctl 
    htop
    hyprpaper
    pavucontrol
    waybar
    wofi  
  ]);
}