# About

Useful tools/utilities I tend to use on laptops.

# Power Management

```bash
# TODO: Research
sudo dnf install \
     powertop

##sudo dnf install \
##     tlp

# Test/Enable TLP
# https://wiki.archlinux.org/index.php/TLP
# TODO: Skipped in order to not get stuck.
##sudo systemctl start tlp.service  
#sudo systemctl start tlp-sleep.service

##sudo systemctl enable tlp.service  
#sudo systemctl enable tlp-sleep.service

# Settings to review
# /etc/default/tlp
```


# Gnome Extensions

```bash
sudo dnf install \
     gnome-shell-extension-gsconnect \
     nautilus-gsconnect \
     webextension-gsconnect
```

# Nvidia

If on a laptop, you should probably disable the Nvidia card to save the the 
battery.

```
sudo echo "blacklist nouveau" >> /etc/modprobe.d/nouveau.conf
```

# Fixes!

- I have laptops with hipdi screens and external monitors which are
  not (SAD). If you are having weird scaling problems with Firefox,
  etc., open dconf-editor and look for xsettings -> overrides and make
  sure it is BLANK! If there's anything in it - remove it and your
  problems will probably go away.
- If you need to tweak the boot params (UEFI)
    - Edit: /etc/default/grub
    - Run: sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg
    - Reboot: Enjoy!





# References

- [HiDPI](https://www.linuxsecrets.com/archlinux-wiki/wiki.archlinux.org/index.php/HiDPI.html)
