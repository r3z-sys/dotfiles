{ pkgs, inputs, ... }:
{
  home.packages = with pkgs; [
    # tela-icon-theme
    # gnomeExtensions.caffeine
    # gnomeExtensions.battery-health-charging
    # gnomeExtensions.blur-my-shell
  ];

  dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/background" = {
        color-shading-type = "solid";
        picture-uri = "file:///home/tabun/Pictures/minimal.jpg";
      };

      "org/gnome/mutter" = {
        experimental-features = [
          "scale-monitor-framebuffer"
          "xwayland-native-scaling"
        ];
      };

      # "org/gnome/shell" = {
      #   disable-user-extensions = false;
      #   enabled-extensions = with pkgs.gnomeExtensions; [
      #     caffeine.extensionUuid
      #     battery-health-charging.extensionUuid
      #   ];
      # };

      "org/gnome/shell/extensions/apps-menu" = {
        show-apps-icon = true;
      };

      "org/gnome/desktop/interface" = {
        # icon-theme = "Tela-light";
        font-name = "Adwaita Sans 11";
        document-font-name = "Adwaita Sans 11";
        monospace-font-name = "Source Code Pro 10";
      };
    };
  };
}