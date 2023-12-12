#!/usr/bin/sh
cp ./filesystem/99-lego.rules ~/Documents/Rust-Spile/99-lego.rules
cd /dev
sudo chmod 777 ttyACM0
rshell
# run these in rshell
# connect serial /dev/ttyACM0 115200
# rsync -a /pyboard ~/Rust-Spike/filesystem
