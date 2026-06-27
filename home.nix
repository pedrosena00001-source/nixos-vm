{ config, pkgs, ... }:

{
    imports = [
         ./i3.nix
         ./alacritty.nix
         ./hyprland.nix
       ];
    home.username = "pedro";
    home.homeDirectory = "/home/pedro";
    home.stateVersion = "25.05";
    programs.zsh = {
            enable = true;
         };
    home.file.".config/kitty/kitty.conf".source = ./kitty/kitty.conf;   
} 
 
   
   
   
   
   
   
   
   
   

   
   
   
   
   
   
   
   
   
   
   
   
   

   
   
   
   
   
