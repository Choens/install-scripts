# About

- Collection of core utilities/tools installed during the "first boot".
- The last command in this file will reboot the computer.



# System Name

```bash
sudo hostnamectl set-hostname --pretty "Euphrati"
sudo hostnamectl set-hostname --static euphrati
```



# Software Setup

- Open GNOME software.
    - Disable the PyCharm repo.
    - Disable the NVIDIA repo, unless this is a system with an NVIDIA card.
    - Disable the Steam repo because I don't really play many games.

Or run the following:

```
sudo sed -i 's/enabled=1/enabled=0/' \
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

## Cockpit/Remote Management

Allows me to connect to and manage the system remotely via Cockpit.

```bash
sudo dnf groupinstall --assumeyes "Headless Management"
sudo dnf install certmonger

sudo dnf install --assumeyes \
    cockpit \
    cockpit-bridge \
    cockpit-composer \
    cockpit-doc \
    cockpit-files \
    cockpit-kdump \
    cockpit-machines \
    cockpit-navigator \
    cockpit-networkmanager \
    cockpit-packagekit \
    cockpit-pcp \
    cockpit-podman \
    cockpit-selinux \
    cockpit-session-recording \
    cockpit-sosreport \
    cockpit-storaged \
    cockpit-system \
    cockpit-ws

# What certificate are we using???? Probably self-signed.
sudo /usr/libexec/cockpit-certificate-ensure --check

# So get something better:
sudo semanage fcontext -a -t cert_t '/etc/cockpit/ws-certs\.d(/.*)?'
sudo restorecon -v /etc/cockpit/ws-certs.d
sudo getcert request -f /etc/cockpit/ws-certs.d/50-certmonger.cert \
                -k /etc/cockpit/ws-certs.d/50-certmonger.key \
                -D euphrati

sudo systemctl enable --now sshd
sudo systemctl enable --now cockpit.socket
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
    gnome-shell-extension-appindicator \
    gnome-shell-extension-blur-my-shell \
    gnome-shell-extension-caffeine \
    gnome-shell-extension-forge \
    gnome-shell-extension-gsconnect \
    gnome-shell-extension-just-perfection \
    gnome-themes-extra \
    gnome-tweaks \
    nautilus-gsconnect

sudo dnf remove gnome-extensions-app
```


## Utilities

- btop: Monitor/Kill things from the CLI
- fish: The other shell!
- podman: Like Docker, minus the daemon. It comes with Silverblue by default. I just add a few extensions.
- Network Manager TUI: CLI access to NM.
- xclip: allows CLI apps to use the mouse

```bash
# General Utilities
sudo dnf install -y \
    NetworkManager-tui \
    git

# Podman
sudo dnf install -y \
    podman-compose \
    podman-docker \
    podman-remote \
    podman-tui
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






c
