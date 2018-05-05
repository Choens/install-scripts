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

## At work - I install Chrome because Chromium lacks chromecast support.

# Chromium -----------------------------
sudo dnf install \
     chromium.x86_64 \
     fedora-user-agent-chrome

# Chrome -------------------------------
sudo dnf install \
     chrome.x86_64 \
     fedora-user-agent-chrome
     
# Other --------------------------------
sudo dnf install \
     mellowplayer
