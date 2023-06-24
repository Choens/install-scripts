# About

Desktop install script for `astartes`, which is usually the name I give to my primary personal laptop. This system spends most of its time plugged in, but I do use it for teaching, programming in the living room, etc.

- Operating System: Fedora Workstation
- Desktop: Gnome
- Goal: Personal work, teaching, data science, programming
- [Current Status/TODO](./todo.md)


# Install

I recommend following along in the following order.

- System
  - This file. See below.
- Desktop
  - [Gnome Install](./gnome-install.md)
  - [Gnome Settings](./gnome-settings.md)
- Programming
  - [Programming](./programming.md)
  - [Programming - Git](./programming-git.md)
  - [Programming - Databases](./programming-database.md)
  - [Programming - Python](./programming-python.md)
  - [Programming - R](./programming-r.md)
  - 
- Other
  - A collection of guides for special use-cases which I've needed.
  - Because I use this infrequently, they may be out of date. Caveat emptor.
  - [Meraki VPN](../useful_guides/meraki.md)
  - [NVIDIA](../useful_guides/nvidia.md)
  - [Realtek](../useful_guides/realtek.md)
  - [Switch Desktop](../useful_guides/switching_desktop.md)
  - [V4L](../useful_guides/v4l.md)
  - [NVim](../useful_guides/vim.md)



# System

Follow along below for some basic first steps.

## Host Name

```bash
sudo hostname astartes
```

## CLI Applications

```bash
sudo dnf install \
    NetworkManager-tui \
    bpytop \
    hwinfo \
    htop \
    p7zip p7zip-plugins \
    pwgen \
    ranger
```



# Other Software

- [Programming](./programming.md)
- [Meraki client](./meraki.md)



# Special Hardware

Instructions for specific hardware situations:

- NVIDIA card: [nvidia.md](../useful_scriptsnvidia.md)
- Realtek wireless modem: [realtek.md](../useful_scripts/realtek.md) may help.

# Special Software:

Instructions/guides for special software situations:

- [Meraki VPN](../useful_guides/meraki.md)
- [Switching Desktops](../useful_guides/switching_desktop.md)
- [Video 4 Linux](../useful_guides/v4l.md)
