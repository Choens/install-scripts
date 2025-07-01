# Switching Desktops

- Notes primarily taken from [the official Fedora Docs](https://docs.fedoraproject.org/en-US/quick-docs/switching-desktop-environments/)
- <https://discussion.fedoraproject.org/t/issues-when-switching-b-w-gnome-and-kde-plasma-des/74621>
- <https://discussion.fedoraproject.org/t/changing-desktop-environment-ends-in-complete-mess/69113/6>

In my experience, this is best done remotely via SSH. Deleting the desktop you are currently logged into is typically fatal for your current GUI session. This can and will happen at an awkward time in the process, so do this via SSH and save yourself the stress of logging into a semi-broken system.

## Gnome -> KDE

```bash

# Convert from Gnome to KDE
sudo dnf swap @gnome-desktop @kde-desktop
sudo dnf swap fedora-release-identity-workstation fedora-release-identity-kde
sudo dnf autoremove

# Identifies packages to you may want to uninstall:
# Note: Some of these may be required.
dnf list installed | grep gnome
sudo dnf remove gnome*

# Review Flatpaks/Installed Software


# Run this when you're done deleting packages.
# Just in case you deleted too much. :-)
sudo dnf install @kde-desktop fedora-release-identity-kde


# Identifies flatpaks to consider uninstalling:
flatpak list | grep org.gnome

# Change display manager
sudo systemctl disable gdm.service
sudo systemctl enable sddm.service
```

## KDE -> Gnome

```bash
# First, do an upgrade.
sudo dnf upgrade

# Convert from KDE to Gnome
sudo dnf swap @kde-desktop @gnome-desktop

sudo dnf autoremove plasma* kf5* kf6* kde* @kde-desktop

sudo dnf swap fedora-release-kde fedora-release-workstation

sudo dnf swap fedora-release-identity-kde fedora-release-identity-workstation
sudo dnf autoremove

# Identifies packages to you may want to uninstall:
# Note: Some of these may be required.
dnf list installed | grep kde
dnf list installed | grep kf5
dnf list installed | grep kf6
dnf list installed | grep plasma

# Run this when you're done deleting packages.
# Just in case you deleted too much. :-)
sudo dnf install @gnome-desktop fedora-release-workstation fedora-release-identity-workstation


# Identifies flatpaks to consider uninstalling:
flatpak list | grep org.kde

# Change display manager
sudo systemctl disable sddm.service
sudo systemctl enable gdm.service
```

