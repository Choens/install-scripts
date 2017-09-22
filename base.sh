## This fixes somethings for booting the blasted thing.

## Edit the etc/default/grub.
## - Remove nomodeset.
## - Add nouveau.modeset=0 to the GRUB_CMDLINE_LINUX variable
## - Run sudo grub2-mkconfig -o /etc/grub2-efi.cfg
