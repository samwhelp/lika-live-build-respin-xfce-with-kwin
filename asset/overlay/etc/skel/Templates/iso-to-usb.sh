
#!/usr/bin/env bash


##
## ## Link
##
## * https://wiki.archlinux.org/title/USB_flash_installation_medium
##


#sudo dd if=./archlinux-2023.06.01-x86_64.iso of=/dev/sdc bs=4M status=progress && sync

sudo dd if=./archlinux-2023.06.01-x86_64.iso of=/dev/sdc bs=4M status=progress conv=fsync oflag=direct
