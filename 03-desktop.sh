# ##############################################################################
# 03 - Desktop Applications
#
# Sections:
# - Internet
#
# Uses sudo. Your user must be in the /etc/sudoers file.
#
# ##############################################################################



# ===============================================================================
# Internet
# ===============================================================================

## For work - I install Google Chrome because Chromium does not seem to have
## reliable chromecast support.

# Install the Fedora version, not the UnitedRPM version.
sudo dnf install \
     chromium \
     fedora-user-agent-chrome

# - Open chromium-browser, go to chrome://flags
# - Search for "media" and "cast"
# - Make sure things are turned on.
     
