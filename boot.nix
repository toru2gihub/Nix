#  /$$$$$$$$                           
# |__  $$__/                           
#    | $$  /$$$$$$   /$$$$$$  /$$   /$$
#    | $$ /$$__  $$ /$$__  $$| $$  | $$
#    | $$| $$  \ $$| $$  \__/| $$  | $$
#    | $$| $$  | $$| $$      | $$  | $$
#    | $$|  $$$$$$/| $$      |  $$$$$$/
#    |__/ \______/ |__/       \______/ 

#  _                 _           _      
# | |__   ___   ___ | |_   _ __ (_)_  __
# | '_ \ / _ \ / _ \| __| | '_ \| \ \/ /
# | |_) | (_) | (_) | |_ _| | | | |>  < 
# |_.__/ \___/ \___/ \__(_)_| |_|_/_/\_\

{ config, pkgs, ... }:

{

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

  boot.initrd.luks.devices."luks-d5266702-4a7f-48a6-a073-f2182890d1b7".device = "/dev/disk/by-uuid/d5266702-4a7f-48a6-a073-f2182890d1b7";
  # Setup keyfile
  boot.initrd.secrets = {
    "/crypto_keyfile.bin" = null;
  };

  boot.loader.grub.enableCryptodisk=true;

  boot.initrd.luks.devices."luks-b5a0cdb5-5756-4884-9a72-2b55a91140be".keyFile = "/crypto_keyfile.bin";
  boot.initrd.luks.devices."luks-d5266702-4a7f-48a6-a073-f2182890d1b7".keyFile = "/crypto_keyfile.bin";

}
