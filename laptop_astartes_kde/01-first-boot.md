# About

- Collection of core utilities/tools installed during the "first boot".
- The last command in this file will reboot the computer.



# System Name

```bash
sudo hostnamectl set-hostname --pretty "Astartes"
sudo hostnamectl set-hostname --static astartes
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
    sudo dnf install @kde-desktop fedora-release-kde fedora-release-identity-kde
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
sudo dnf install @kde-desktop @kde-pim

sudo dnf install -y \
    adw-gtk3-theme
```

- I like the idea, but it has never really worked for me.
- I retest it periodically, but it has not replaced T-Bird.

```bash
sudo dnf remove --assumeyes @kde-pim
```




## Utilities

Some of this was inspired by what Ublue installs: https://github.com/ublue-os/main/blob/main/packages.json

- Network Manager TUI: CLI access to NM
- aurorae: Aurorae is a themeable window decoration for KWin
- kate: Advanced text editor from KDE
- kcron: Cron KDE configuration module
- kio-admin: Manage files as administrator using the admin:// KIO protocol
- ksshaskpass: A ssh-add helper that uses kwallet and kpassworddialog
- podman: Like Docker, minus the daemon

```bash
# General Utilities
sudo dnf install -y \
    NetworkManager-tui \
    aurorae \
    git \
    kate-krunner-plugin kate-plugins \
    kcron \
    kjournald \
    kio-admin \
    ksshaskpass \
    

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

bubblewrap.x86_64: Core execution tool for unprivileged containers
 bwrap-oci.x86_64: Run OCI containers with bubblewrap
 cadvisor.x86_64: Analyzes resource usage and performance characteristics of running containers
 catatonit.x86_64: A signal-forwarding process manager for containers
 cekit.noarch: Container image creation tool
 cekit-bash-completion.noarch: Container image creation tool
 cekit-zsh-completion.noarch: Container image creation tool



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

# Set my primary user as the tasilscale operator:
sudo tailscale set --operator=andy

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
