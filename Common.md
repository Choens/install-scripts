# About

Contains some steps I follow on nearly all systems.

# Init

Collection of things I need installed to proceed. Anything installed here
is also listed in 01-cli.sh just in case I skip it here.

```bash
sudo dnf upgrade
```



# CLI

Sections:
- Setup
- CLI Applications
- Power Management

## Setup & RSA

```bash
sudo apt install git xclip

# RSA Key ======================================================================
# Reference: https://help.github.com/articles/connecting-to-github-with-ssh/
# Copies the contents of the id_rsa.pub file to your clipboard.
# Give this to GitHub, then proceed. Or use the key from previous install.
ssh-keygen -t rsa -b 4096 -C "andy.choens@gmail.com"
ssh-add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub

# Clone ========================================================================
cd ~
mkdir Documents/GitHub
cd Documents/GitHub
git clone https://github.com/Choens/install-scripts.git
```



## CLI Applications

```bash
sudo dnf install \
    aspell-en \
    hunspell-en \
    hwinfo \
    htop \
    p7zip p7zip-plugins \
    pwgen \
    ranger \
    xclip
```

## Power Management

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



# Meraki Cisco

Note: You only need to do this if you need to interact with a Meraki VPN.

```bash
## Neither of these will work with Meraki, so make sure they aren't there.
sudo dnf remove libreswan openswan

## Then, install all of this.
sudo dnf install \
    NetworkManager-l2tp\
    NetworkManager-strongswan.x86_64 \
    plasma-nm-l2tp.x86_64 plasma-nm-strongswan \
    strongswan
sudo systemctl stop xl2tpd
```

# Flatpak

```bash
# If this works, skip the next part.
# Browse to: https://flatpak.org/setup/Fedora/ and download the Flathub
# repository file, or intsall it this way:
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

# Nvidia Driver

```bash
# NVidia Driver
# This is only needed on systems with an NVIDIA card.
# And even then, I don't often install it. I usually just blacklist the nouveau
# driver and use the built-in Intel video card.
sudo dnf install kmod-nvidia

```

# Resources

- [HiDPI](https://www.linuxsecrets.com/archlinux-wiki/wiki.archlinux.org/index.php/HiDPI.html)
- [Configuring Meraki Client VPN on Linux Mint 19 ](https://stuffjasondoes.com/2018/08/16/configuring-meraki-client-vpn-on-linux-mint-19-network-manager/)
- https://bugzilla.redhat.com/show_bug.cgi?id=1807024
- https://codepre.com/how-to-install-gdm-sddm-lightdm-display-manager-on-fedora.html
- https://dnf.readthedocs.io/en/latest/command_ref.html
- https://bugzilla.redhat.com/show_bug.cgi?id=1807024
- https://stuffjasondoes.com/2018/08/16/configuring-meraki-client-vpn-on-linux-mint-19-network-manager/
