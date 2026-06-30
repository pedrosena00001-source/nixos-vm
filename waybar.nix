{ config, pkgs, ... }:

{
  programs.waybar = {
    enable = true;
    systemd.enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 32;
        spacing = 4;

        modules-left = [ "hyprland/workspaces" "hyprland/window" ];
        modules-center = [ "clock" ];
        modules-right = [ "cpu" "memory" "disk" "network" "tray" ];

        "hyprland/workspaces" = {
          format = "{icon}";
          on-click = "activate";
          format-icons = {
            active = "";
            default = "";
          };
          persistent-workspaces = {
            "*" = 5;
          };
        };

        "hyprland/window" = {
          format = "{title}";
          max-length = 50;
          separate-outputs = true;
        };

        clock = {
          format = "{:%H:%M  %d/%m/%Y}";
          tooltip-format = "<tt><small>{calendar}</small></tt>";
          calendar = {
            mode = "month";
            on-scroll = 1;
            format = {
              today = "<span color='#cba6f7'><b>{}</b></span>";
            };
          };
        };

        cpu = {
          interval = 2;
          format = " {usage}%";
          tooltip = false;
        };

        memory = {
          interval = 2;
          format = " {used:0.1f}G/{total:0.1f}G";
          tooltip-format = "RAM: {percentage}%";
        };

        disk = {
          interval = 30;
          format = " {percentage_used}%";
          path = "/";
          tooltip-format = "{used} usados de {total}";
        };

        network = {
          interval = 2;
          format-wifi = "  {essid} ({signalStrength}%)";
          format-ethernet = "  {ifname}";
          format-disconnected = "⚠ sem rede";
          tooltip-format = "{ifname}: {ipaddr}/{cidr}";
        };

        tray = {
          icon-size = 16;
          spacing = 8;
        };
      };
    };

    style = ''
      * {
        font-family: "JetBrainsMono Nerd Font";
        font-size: 13px;
        border: none;
        border-radius: 0;
        min-height: 0;
      }

      window#waybar {
        background-color: rgba(30, 30, 46, 0.85); /* Catppuccin Mocha base */
        color: #cdd6f4;
        transition-property: background-color;
        transition-duration: 0.3s;
      }

      #workspaces button {
        padding: 0 8px;
        color: #cdd6f4;
        background: transparent;
      }

      #workspaces button.active {
        color: #cba6f7;
        border-bottom: 2px solid #cba6f7;
      }

      #workspaces button:hover {
        background: rgba(203, 166, 247, 0.15);
      }

      #window {
        color: #a6adc8;
        padding: 0 10px;
      }

      #clock {
        font-weight: bold;
        color: #f5c2e7;
        padding: 0 12px;
      }

      #cpu, #memory, #disk, #network, #tray {
        padding: 0 10px;
        color: #cdd6f4;
      }

      #cpu {
        color: #a6e3a1;
      }

      #memory {
        color: #fab387;
      }

      #disk {
        color: #89b4fa;
      }

      #network {
        color: #94e2d5;
      }

      #network.disconnected {
        color: #f38ba8;
      }

      #tray {
        margin-right: 6px;
      }
    '';
  };
}
