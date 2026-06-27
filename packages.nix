{ config, lib, pkgs, ... }:
{
environment.systemPackages = with pkgs; [
    vim 
    wget
    git
    alacritty
    librewolf
    kitty
    rofi
    xclip
    fastfetch
    docker
  ];
}
