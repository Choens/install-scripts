# 03 - Setup

Sections:
- Nvidia
- Firefox
- Settings
- Fixes



# Nvidia

If on a laptop, you should probably disable the Nvidia card to save the the 
battery.

```
sudo echo "blacklist nouveau" >> /etc/modprobe.d/nouveau.conf
```

## Firefox

I have multiple profiles:

- Andy (Personal) 
- Acuitas
- ACPHS

Each email address has an FireFox account. FF will then send you the code.
This will sync extensions, bookmarks, etc.

## Chrome

- Use Firefox Developer Theme or some other Dark theme. It's important.

## Settings

### Gnome

- Keyboard Shortcuts:
    - Set Switch Windows to Alt+Tab.
    - Set Switch Applications to Super+Tab
- Set Caps Lock up as an extra Control Key.
- Set mono-font to Adobe Source Code Pro or Cascadia.
- Bluetooth: Setup headphones, phone.
- Touchpad: Enable Tap to Click
- I set the pixel height/scale of my laptop to be equal to my external monitor.
    - In this case 1080. YMMV
    - This is important for apps that don't handle changing scale well.

## Fixes!

- I have laptops with hipdi screens and external monitors which are
  not (SAD). If you are having weird scaling problems with Firefox,
  etc., open dconf-editor and look for xsettings -> overrides and make
  sure it is BLANK! If there's anything in it - remove it and your
  problems will probably go away.
- If you need to tweak the boot params (UEFI)
    - Edit: /etc/default/grub
    - Run: sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg
    - Reboot: Enjoy!
