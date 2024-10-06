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

# PACKAGES
environment.systemPackages = with pkgs; [

## WINDOW MANAGER STUFF
yazi
zathura
btop
nwg-look
xorg.xrdb
nsxiv
swww
ncmpcpp
mpd
mpc-cli
foot
kitty
waybar
mako

# Hyprland
hyprlock
hypridle
hyprpicker
hyprcursor
   
# lib
libnotify
libgcc
gtk3-x11

# internet
firefox
yt-dlp
newsboat
telegram-desktop
syncthing
syncthingtray
networkmanagerapplet

# development
zsh
wget
emacs
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
spotdl
mpv
pulsemixer
xdg-desktop-portal-hyprland
ffmpeg
wf-recorder

# graphics
gimp
inkscape
imagemagick

# tools
texliveBasic
libreoffice
ghostscript
poppler
android-file-transfer
xdg-utils
hugo
ffmpegthumbnailer 
unrar
wl-clipboard 
grimblast

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
fd
ripgrep
bat
eza
tmux
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
cbonsai
 
  ];

}
