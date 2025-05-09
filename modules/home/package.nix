{ pkgs, ... }:
{
  home.packages = (with pkgs; [ 
    # android-studio
    libreoffice-fresh
    obsidian
    zotero
  ]);

}