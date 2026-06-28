{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix 
      ./packages.nix
    ];
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  networking.hostName = "nixos-btw"; 
  networking.networkmanager.enable = true;
  time.timeZone = "America/Sao_Paulo";
  services.xserver = {
         enable = true;
         autoRepeatDelay = 200;
         autoRepeatInterval = 35;
};
  services.displayManager.ly.enable = true;
  programs.hyprland.enable = true;
  services.xserver.xkb.layout = "br";
  services.xserver.xkb.variant = "abnt2";
  services.xserver.xkb.options = "eurosign:e,caps:escape";
  users.users.pedro = {
    isNormalUser = true;
   extraGroups = [ "wheel" ]; 
    packages = with pkgs; [
      tree
    ];
  };
  programs.firefox.enable = true;
  programs.zsh.enable = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  users.users.pedro.shell = pkgs.zsh;
  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;
  system.stateVersion = "26.05";

}

