{ config, pkgs, ... }:

{
    imports = [
         ./i3.nix
         ./alacritty.nix
       ];
    home.username = "pedro";
    home.homeDirectory = "/home/pedro";
    home.stateVersion = "25.05";
    programs.zsh = {
            enable = true;
            shellAliases = {
                   btw = "echo I use nixos, btw";
           };
         };
    home.file.".config/qtile".source = ./config/qtile;
   
} 
 
   
   
   
   
   
   
   
   
   

   
   
   
   
   
   
   
   
   
   
   
   
   

   
   
   
   
   
