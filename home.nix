{ config, pkgs, ... }:

{
    imports = [
         ./hyprland.nix
	 ./zsh.nix
 	 ./nvim.nix
	 ./waybar.nix
       ];
    home.username = "pedro";
    home.homeDirectory = "/home/pedro";
    home.stateVersion = "25.05";
    programs.zsh = {
            enable = true;
         };
    home.file.".config/kitty/kitty.conf".source = ./kitty/kitty.conf;   
} 
 
   
   
   
   
   
   
   
   
   

   
   
   
   
   
   
   
   
   
   
   
   
   

   
   
   
   
   
