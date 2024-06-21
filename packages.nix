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

# environment
foot
tofi
waybar
wl-clipboard 
mako
hyprlock
hypridle
swww
hyprpicker
hyprcursor

# internet
firefox
yt-dlp
newsboat
telegram-desktop
syncthing

# development
zsh
emacs-gtk
wget
neovim
git
vimv
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
ytfzf
pulsemixer
ncmpcpp
wf-recorder
ffmpeg

# graphics
nsxiv
gimp
inkscape
grim
slurp
xorg.xrdb

# tools
texliveFull
ghostscript
poppler
android-file-transfer
zathura
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

# cli-stuff
cowsay
fastfetch
sl
cava
   
  ];

}
