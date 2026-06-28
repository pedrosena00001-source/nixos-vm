{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix 
      ./packages.nix
      ./zsh.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;


  networking.hostName = "nixos-btw"; 

  networking.networkmanager.enable = true;

  time.timeZone = "America/Sao_Paulo";

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable the X11 windowing system.
  # services.xserver.enable = true;
  services.xserver = {
         enable = true;
         autoRepeatDelay = 200;
         autoRepeatInterval = 35;
         #windowManager.qtile.enable = true;
        #windowManager.i3 = {
        #        enable = true;
        #    };           
};
  
  services.displayManager.ly.enable = true;
  programs.hyprland.enable = true;
  services.xserver.xkb.layout = "br";
  services.xserver.xkb.variant = "abnt2";
  services.xserver.xkb.options = "eurosign:e,caps:escape";
  # Enable touchpad support (enabled default in most desktopManager).
  # services.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.pedro = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    packages = with pkgs; [
      tree
    ];
  };

  programs.firefox.enable = true;
 
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  users.users.pedro.shell = pkgs.zsh;

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  system.stateVersion = "26.05";

}

