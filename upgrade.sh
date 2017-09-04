# ==============================================================================
# Upgrading
#
# Instructions for how to upgrade a Fedora system via the CLI.
# Probably no longer required, Gnome Software can now do this.
#
# Change 2x below to the version relase you want to upgrade to.
# Otherwise you will get an error.
#
# ==============================================================================

sudo dnf upgrade --refresh
sudo dnf install dnf-plugin-system-upgrade

sudo dnf system-upgrade download --releasever 2x
sudo dnf system-upgrade reboot
