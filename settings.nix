#  /$$$$$$$$                           
# |__  $$__/                           
#    | $$  /$$$$$$   /$$$$$$  /$$   /$$
#    | $$ /$$__  $$ /$$__  $$| $$  | $$
#    | $$| $$  \ $$| $$  \__/| $$  | $$
#    | $$| $$  | $$| $$      | $$  | $$
#    | $$|  $$$$$$/| $$      |  $$$$$$/
#    |__/ \______/ |__/       \______/ 

#           _   _   _                         _      
#  ___  ___| |_| |_(_)_ __   __ _ ___   _ __ (_)_  __
# / __|/ _ \ __| __| | '_ \ / _` / __| | '_ \| \ \/ /
# \__ \  __/ |_| |_| | | | | (_| \__ \_| | | | |>  < 
# |___/\___|\__|\__|_|_| |_|\__, |___(_)_| |_|_/_/\_\
#                           |___/                    

{ config, pkgs, ... }:

{

# Define a user account. Don't forget to set a password with ‘passwd’.
users.users.toru = {
  isNormalUser = true;
  description = "toru";
  extraGroups = [ "networkmanager" "wheel" ];
  packages = with pkgs; [
  #  thunderbird
  ];
};

# Hostname
networking.hostName = "nixos";

# Enable networking
networking.networkmanager.enable = true;

# Enable wireless networking
# networking.wireless.enable = true;

# OpenSSH daemon.
# services.openssh.enable = true;

# Firewall
networking.firewall.enable = true;
networking.firewall.allowedTCPPorts = [ 80 443 ];

# Experimental features
nix.settings.experimental-features = [ "nix-command" "flakes" ];

# Gnome keyring
services.gnome.gnome-keyring.enable = true;

# Configure console keymap
console.keyMap = "la-latin1";

# Enable CUPS to print documents.
services.printing.enable = false;

# Set your time zone.
time.timeZone = "America/Caracas";

# Select internationalisation properties.
i18n.defaultLocale = "en_US.UTF-8";

# Extra locale settings
i18n.extraLocaleSettings = {
  LC_ADDRESS = "es_VE.UTF-8";
  LC_IDENTIFICATION = "es_VE.UTF-8";
  LC_MEASUREMENT = "es_VE.UTF-8";
  LC_MONETARY = "es_VE.UTF-8";
  LC_NAME = "es_VE.UTF-8";
  LC_NUMERIC = "es_VE.UTF-8";
  LC_PAPER = "es_VE.UTF-8";
  LC_TELEPHONE = "es_VE.UTF-8";
  LC_TIME = "es_VE.UTF-8";
};

# Enable sound with pipewire.
#sound.enable = true;
hardware.pulseaudio.enable = false;
security.rtkit.enable = true;
services.pipewire = {
  enable = true;
  alsa.enable = true;
  alsa.support32Bit = true;
  pulse.enable = true;
};

services.pcscd.enable = true;
programs.gnupg.agent = {
   enable = true;
   #pinentryPackage = "curses";
   enableSSHSupport = true;
};

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk pkgs.xdg-desktop-portal-wlr ];
};

}
