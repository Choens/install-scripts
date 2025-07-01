# About

- Collection of core utilities/tools installed during the "first boot".
- The last command in this file will reboot the computer.



# System Name

```bash
sudo hostnamectl set-hostname --pretty "Euphrati"
sudo hostnamectl set-hostname --static euphrati
```



# Software Setup

- Open KDE Discover:
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
    cascadia-code-fonts \
    fira-code-fonts \
    ibm-plex-mono-fonts ibm-plex-sans-fonts ibm-plex-serif-fonts
```

## KDE

TODO

- adw-gtk3-theme: Dark Adwaita-like theme for legacy GTK3 apps.


```bash
sudo dnf group install "KDE Plasma Workspaces"

sudo dnf install -y \
    adw-gtk3-theme
```


## Utilities

Some of this was inspired by what Ublue installs: https://github.com/ublue-os/main/blob/main/packages.json

- Network Manager TUI: CLI access to NM.
- btop: Monitor/Kill things from the CLI
- fish: The other shell!
- fzf: The fuzzy finder tool.
- git:
  - gh: GitHub CLI
  - gitui: A rust CLI app for git
  - glab: GitLab CLI
  - tig: Useful it pager
- kcron: Cron KDE configuration module
- kio-admin: Manage files as administrator using the admin:// KIO protocol
- ksshaskpass: A ssh-add helper that uses kwallet and kpassworddialog
- podman: Like Docker, minus the daemon
- ripgrep: Like grep, only faster
- xclip: allows CLI apps to use the mouse

```bash
# General Utilities
sudo dnf install -y \
    NetworkManager-tui \
    git \
    kcron \
    kjournald \
    kio-admin \
    ksshaskpass
    
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



# Restart

- Now is probably a good time to restart the system.
- You don't have access to any of your new things until you do.

```bash
sudo shutdown -r now
```
