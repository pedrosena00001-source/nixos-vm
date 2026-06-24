{ config, pkgs, ... }:

{
  xsession.windowManager.i3 = {
    enable = true;
    config = {
      modifier = "Mod4"; # tecla Super/Windows

      terminal = "alacritty";

      menu = "rofi -show drun";

      gaps = {
        inner = 10;
        outer = 5;
      };

      keybindings = let
        mod = "Mod4";
      in {
        "${mod}+Return" = "exec alacritty";
        "${mod}+d" = "exec rofi -show drun";
        "${mod}+Shift+q" = "kill";
        "${mod}+Shift+c" = "reload";
        "${mod}+Shift+r" = "restart";
        "${mod}+Shift+e" = "exec i3-nagbar -t warning -m 'Sair do i3?' -B 'Sim' 'i3-msg exit'";

        # navegação entre janelas (vim-like)
        "${mod}+h" = "focus left";
        "${mod}+j" = "focus down";
        "${mod}+k" = "focus up";
        "${mod}+l" = "focus right";

        # mover janelas
        "${mod}+Shift+h" = "move left";
        "${mod}+Shift+j" = "move down";
        "${mod}+Shift+k" = "move up";
        "${mod}+Shift+l" = "move right";

        # workspaces 1-10
        "${mod}+1" = "workspace 1";
        "${mod}+2" = "workspace 2";
        "${mod}+3" = "workspace 3";
        "${mod}+4" = "workspace 4";
        "${mod}+5" = "workspace 5";

        "${mod}+Shift+1" = "move container to workspace 1";
        "${mod}+Shift+2" = "move container to workspace 2";
        "${mod}+Shift+3" = "move container to workspace 3";
        "${mod}+Shift+4" = "move container to workspace 4";
        "${mod}+Shift+5" = "move container to workspace 5";

        # layout
        "${mod}+f" = "fullscreen toggle";
        "${mod}+Shift+space" = "floating toggle";
        "${mod}+v" = "split v";
        "${mod}+b" = "split h";
      };

      bars = [{
        position = "top";
        statusCommand = "i3status";
      }];
    };

    extraConfig = ''
      exec --no-startup-id feh --bg-fill ~/Pictures/wallpaper.jpg
      exec --no-startup-id autotiling
    '';
  };
}
