{ config, pkgs, ... }:

{
    home.username = "pedro";
    home.homeDirectory = "/home/pedro";
    home.stateVersion = "25.05";
    programs.bash = {
            enable = true;
            shellAliases = {
                   btw = "echo I use nixos, btw";
           };
         };
    home.file.".config/qtile".source = ./config/qtile;
}
