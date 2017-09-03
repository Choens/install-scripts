# ==============================================================================
# Upgrading
# Probably no longer required, since you can do it with Gnome Software
# ==============================================================================

sudo dnf upgrade --refresh
sudo dnf install dnf-plugin-system-upgrade

sudo dnf system-upgrade download --releasever 2x
sudo dnf system-upgrade reboot

ssh andy@192.168.1.179
