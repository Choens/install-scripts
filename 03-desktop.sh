# ##############################################################################
# Desktop Applications
#
# Sections:
# - Internet
# - Graphics
# - Multimedia
#
# Uses sudo. Your user must be in the /etc/sudoers file.
#
# ##############################################################################



# ===============================================================================
# Internet
# ===============================================================================

# From United RPMs
# I'm trying to wean myself off Chromium.
#dnf install chromium

## One are in which Desktop Linux is deficient is email. Evolution, the default
## GNOME app isn't very good. TBird is better, but has complicated future and is
## not well integrated with either my desktop OR office suite (libreoffice). I
## would like to find a better linux desktop email client.
sudo dnf install \
     thunderbird.x86_64 \
     thunderbird-enigmail \
     thunderbird-lightning-gdata.x86_64


