{ config, lib, pkgs, ... }:
{
environment.systemPackages = with pkgs; [
    vim 
    wget
    git
    librewolf
    kitty
    rofi
    fastfetch
    docker
    gh
    hyprpaper
    adwaita-icon-theme
    curl
    brave
  ];
}
