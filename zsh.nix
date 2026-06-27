{ config, lib, pkgs, ... }:
{
      programs.zsh = {
          enable = true;
          autosuggestions.enable = true;    
          syntaxHighlighting.enable = true; 
          enableCompletion = true;
         ohMyZsh = {
              enable = true;
              theme = "cloud";
              plugins = [
                  "git"
                  "sudo" 
                  "history"
                  "docker"
          ];
         };
          shellAliases = {                                                                        
                 ll = "ls -la";
                 sv = "sudo vim";
                 update = "sudo nixos-rebuild switch --flake ~/nixos-dotfiles#nixos-btw";
                 v = "vim";
                 garbage = "sudo nix-collect-garbage -d";
                 cdd = "cd nixos-dotfiles";
          };
    };
}                               
                                    
                                    
                                    
                                    
                                    
              
