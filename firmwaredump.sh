#!/usr/bin/sh
# should show our device
sudo dfu-util
sudo dfu-util --alt 0 --dfuse-address 0x08000000:1048576 --upload ~/firmware.bin
sudo chown $(whoami) ~/firmware.bin
fallocate -c -o 0 -l 32768 ~/firmware.bin
sed -i '$ s/\xFF*$//' ~/firmware.bin
mv ~/firmware.bin ~/$(md5sum ~/firmware.bin | awk '{ print $1 }').bin
