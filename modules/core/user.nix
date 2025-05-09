{
  pkgs,
  inputs,
  username,
  host,
  ...
}:
{
  imports = [ inputs.home-manager.nixosModules.home-manager ];
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    users.tabun = {
      imports = [../home];
      home.username = "tabun";
      home.homeDirectory = "/home/tabun";
      home.stateVersion = "24.11";
      programs.home-manager.enable = true;
    };
  };

  users.users.tabun = {
    isNormalUser = true;
    extraGroups = [ "wheel" "audio" "video" "disk" ]; # Enable ‘sudo’ for the user.
    packages = with pkgs; [
      vscode
      tree
    ];
  };
}
