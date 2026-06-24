{ config, pkgs, ... }:
 
{
  programs.alacritty = { 
         enable = true;
         settings = {
           window = {
               opacity = 0.50;
               padding = {
                   x = 10;
                   y = 10;
                };
                decorations = "full";
               };
                                                               
               font = {
                    normal = {
                           family = "JetBrainsMono Nerd Font";
                            style = "Regular";
                    };
                    size = 12.0;
                 };
                 colors = { 
                        primary = {
                             background = "#1e1e2e";
                             foreground = "#cdd6f4";
                         };
                       };
                                                               
                 cursor = {
                    style = "Block";
           };
         };
       };
     }
