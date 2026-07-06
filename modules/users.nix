{ pkgs, ... }:
{
  programs.zsh.enable = true;
  users.users.chrnio = {
    isNormalUser = true;
    description = "Charan Vadapalli";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };
}
