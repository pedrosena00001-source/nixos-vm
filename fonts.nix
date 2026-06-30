{ pkgs, ... }:

{
  fonts = {
    packages = with pkgs; [
      nerd-fonts.jetbrains-mono
      nerd-fonts.fira-code
      nerd-fonts.hack
      # adiciona quantas quiser:
      # nerd-fonts.caskaydia-cove
      # nerd-fonts.meslo-lg
    ];

    fontconfig = {
      enable = true;
      defaultFonts = {
        monospace = [ "JetBrainsMono Nerd Font" ];
        sansSerif = [ "JetBrainsMono Nerd Font" ];
        serif = [ "JetBrainsMono Nerd Font" ];
      };
    };
  };
	}
