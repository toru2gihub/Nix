#  /$$$$$$$$                           
# |__  $$__/                           
#    | $$  /$$$$$$   /$$$$$$  /$$   /$$
#    | $$ /$$__  $$ /$$__  $$| $$  | $$
#    | $$| $$  \ $$| $$  \__/| $$  | $$
#    | $$| $$  | $$| $$      | $$  | $$
#    | $$|  $$$$$$/| $$      |  $$$$$$/
#    |__/ \______/ |__/       \______/ 

#                   _                                 _      
#  _ __   __ _  ___| | ____ _  __ _  ___  ___   _ __ (_)_  __
# | '_ \ / _` |/ __| |/ / _` |/ _` |/ _ \/ __| | '_ \| \ \/ /
# | |_) | (_| | (__|   < (_| | (_| |  __/\__ \_| | | | |>  < 
# | .__/ \__,_|\___|_|\_\__,_|\__, |\___||___(_)_| |_|_/_/\_\
# |_|                         |___/                          

{ config, pkgs, ... }:

{

# Hyprland
programs.hyprland = {
  enable = true;
  xwayland.enable = true;
};

# Zsh.
programs.zsh.enable = true;
users.defaultUserShell = pkgs.zsh;

# Fonts.
fonts.packages = with pkgs; [

jetbrains-mono
nerdfonts
font-awesome

];

# Allow unfree packages
nixpkgs.config.allowUnfree = true;

environment.systemPackages = with pkgs; [
   
# lib
libnotify
libgcc

# environment
foot
tofi
waybar
wl-clipboard 
mako

## Hyprland
pyprland
hyprlock
hypridle
hyprpicker
hyprcursor

# internet
firefox
yt-dlp
newsboat
telegram-desktop
syncthing
qbittorrent

# development
zsh
wget
emacs-gtk
neovim
git
vimv
nil
python3

# fonts
jetbrains-mono
nerdfonts
font-awesome

# multimedia
mpd
mpc-cli
spotdl
mpv
pulsemixer
#ncmpcpp
obs-studio
xdg-desktop-portal-hyprland
ffmpeg

# graphics
nsxiv
swww
gimp
inkscape
grim
slurp
nwg-look
xorg.xrdb

# tools
texliveFull
yazi
ghostscript
poppler
android-file-transfer
zathura
xdg-utils
hugo
ffmpegthumbnailer 
unrar

# privacy
pinentry-curses
pass
tomb
gnupg

# cli-tools
gnumake
stow
tree
fzf
btop
fd
ripgrep
bat
eza
zellij
rsync
ncdu
xdg-user-dirs
unzip
zip
gvfs
file

# cli-stuff
cowsay
fastfetch
cava
fortune
sl
   
  ];

}
