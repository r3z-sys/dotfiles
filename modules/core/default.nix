{
  inputs,
  nixpkgs,
  self,
  username,
  host,
  ...
}:
{
  imports = [
    ./users.nix
    ./configuration.nix
  ];
}
