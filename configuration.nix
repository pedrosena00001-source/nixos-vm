	{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix 
      ./packages.nix
      ./fonts.nix
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
   extraGroups = [ "wheel" "docker" ]; 
    packages = with pkgs; [
      tree
    ];
  };
  programs.zsh.enable = true;
  programs.virt-manager.enable = true;
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;
  users.groups.libvirtd.members = ["pedro"];
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  virtualisation.docker.enable = true;
  users.users.pedro.shell = pkgs.zsh;
  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;
  system.stateVersion = "26.05";

}

