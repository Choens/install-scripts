# README:

Contains installation notes/scripts/etc. for my various laptops and 
workstations. I try to keep my systems semi-consistent. Where there are
differences, I try to be consistent in how I identify them.

# First Steps

## Installaton
- Install Fedora:
    - Download ISO file, burn to a USB-drive, install.
- During installation, encrypt the HDD
- Reboot

## First Boot
- Settings:
    - Mouse: Enable "Tap to Click"
    - Make the mouse cursor bigger.
    - Open Software, enable third party software repositories.
        - Activate the Google Chrome repo
        - Activate the NVIDIA Driver repo, if applicable
- If installing on a fresh system (and not a copy/clone), open
  [Common.md](Common.md) to get started.

## Setup

Worth exploring:

```
dnf group list
dnf groupinfo "Development Tools"
```

Files are listed in the order in which they should be applied.

- [Common.md](Common.md)
- [Desktop-Common](Desktop%20-%20Common.md)
- [Desktop - Gnome](Desktop%20-%20Gnome.md) or [Desktop - KDE](Desktop%20-%20KDE.md)