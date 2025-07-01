# About

- Collection of core utilities/tools installed during the "first boot".
- The last command in this file will reboot the computer.



# System Name

```bash
sudo hostnamectl set-hostname --pretty "Astartes"
sudo hostnamectl set-hostname --static astartes
```



# Software Setup

- Open GNOME software.
    - Disable the PyCharm repo.
    - Disable the NVIDIA repo, unless this is a system with an NVIDIA card.
    - Disable the Steam repo because I don't really play many games.

Or run the following:

```
sed -i 's/enabled=1/enabled=0/' \
    /etc/yum.repos.d/_copr:copr.fedorainfracloud.org:phracek:PyCharm.repo \
    /etc/yum.repos.d/fedora-cisco-openh264.repo \
    /etc/yum.repos.d/google-chrome.repo \
    /etc/yum.repos.d/rpmfusion-nonfree-nvidia-driver.repo \
    /etc/yum.repos.d/rpmfusion-nonfree-steam.repo
```



# Update & Install Core Utilities

## System Updates

```bash
# Check for updates . . .
sudo dnf upgrade --assumeyes
```

## Fonts

Fonts: I like fancy mono-spaced fonts.

```bash
sudo dnf install -y \
    adobe-source-sans-pro-fonts \
    adobe-source-serif-pro-fonts \
    cascadia-code-fonts cascadia-code-nf-fonts\
    fira-code-fonts \
    ibm-plex-mono-fonts ibm-plex-sans-fonts ibm-plex-serif-fonts
```

## Gnome

- GNOME Shell Extensions:
    - Gnome breaks it's extension API regularly.
    - This way I _KNOW_ I will get working extensions.
- Gnome Themes Extra: Includes Adwaita Dark.
  - Useful in Gnome Tweaks to get dark mode working in stubborn legacy apps.
- GNOME Tweaks: Settings they haven't found a "good" home for some important settings.
- adw-gtk3-theme: Dark Adwaita-like theme for legacy GTK3 apps.
- gsconnect: Connect computer to phone, like a boss.

```bash
sudo dnf install -y \
    adw-gtk3-theme \
    f42-backgrounds-gnome \
    gnome-shell-extension-appindicator \
    gnome-shell-extension-blur-my-shell \
    gnome-shell-extension-caffeine \
    gnome-shell-extension-forge \
    gnome-shell-extension-gsconnect \
    gnome-shell-extension-just-perfection \
    gnome-themes-extra \
    gnome-tweaks \
    nautilus-gsconnect
```


## Utilities

- git
- podman: Like Docker, minus the daemon.
    - I add a few extensions.
- wl-clipboard: Connect terminal clipboard to system clipboard.
- Network Manager TUI: CLI access to NM.

```bash
# General Utilities
sudo dnf install -y \
    NetworkManager-tui \
    git \
    wl-clipboard

# Remove Gnome Extensions
sudo dnf autoremove -y gnome-extensions-app.x86_64

# Podman
sudo dnf install -y \
    podman-compose \
    podman-docker \
    podman-remote \
    podman-tui
```

Containers are most useful if the socket is running.

```bash
# DO NOT RUN AS ROOT!!!
systemctl --user enable  --now podman.socket
systemctl --user status podman.socket
```



# Local Config Files

## ~/.bashrc

Add the following:

```bash
export VISUAL=nvim
export EDITOR="$VISUAL"
```
```
```
# Tailscale

Sets up the Choens virtual network.

```bash
# Install Tailscale repo and package:
sudo dnf config-manager -y --add-repo https://pkgs.tailscale.com/stable/fedora/tailscale.repo
sudo dnf install -y tailscale

# Enable the TS service & connect to my Tailscale network
sudo systemctl enable --now tailscaled
sudo tailscale up --ssh --accept-risk=lose-ssh

# Auto update Tailscale.
sudo tailscale set --auto-update
```



# RPM Fusion

This is _very_ optional and it unfortunately adds a lot of crap to the base installation.

```bash
sudo dnf install -y \
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```

Video Loopback Support

```bash
sudo dnf install kernel-headers v4l2loopback
```



# Restart

- Now is probably a good time to restart the system.
- You don't have access to any of your new things until you do.

```bash
sudo shutdown -r now
```
