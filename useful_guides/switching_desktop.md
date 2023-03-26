# Switching Desktops:

- Notes primarily taken from [the official Fedora Docs](https://docs.fedoraproject.org/en-US/quick-docs/switching-desktop-environments/)
- https://discussion.fedoraproject.org/t/issues-when-switching-b-w-gnome-and-kde-plasma-des/74621



# KDE -> Gnome

```bash
sudo dnf swap fedora-release-identity-kde fedora-release-identity-workstation
sudo dnf swap @kde-desktop @gnome-desktop
```

# Gnome -> KDE

```bash
sudo dnf swap fedora-release-identity-workstation fedora-release-identity-kde
sudo dnf swap @gnome-desktop @kde-desktop
```