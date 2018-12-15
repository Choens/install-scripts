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
# CLI Applications
# ===============================================================================
sudo dnf install  \
     ffmpeg.x86_64 gstreamer-ffmpeg.x86_64 \
     mpv \
     p7zip p7zip-plugins \
     pwgen \
     ranger

# ===============================================================================
# GNOME
# ===============================================================================
sudo dnf install -y \
     bleachbit \
     epiphany \
     evince-browser-plugin evince-nautilus \
     fonts-tweak-tool.x86_64 \
     gnome-tweaks \
     gnome-books \
     gnome-chess \
     gnome-dictionary \
     gnome-logs \
     gnome-mahjongg \
     gnome-maps \
     gnome-mpv \
     gnome-music \
     gnome-nettool \
     gnome-packagekit-updater \
     gnome-photos \
     gnome-power-manager \
     gnome-usage \
     menulibre

# Use Software to install Gnome Shell Extensions:
# - Alternate Tab
# - Calc
# - Do Not Disturb
# - Media Player Indicator
# - Top Icons Plus


# I don't usually need this.
#dnf install gnome-sound-recorder.noarch

# ===============================================================================
# Other
# ===============================================================================

## At work - I install Chrome because Chromium lacks chromecast support.

# Chromium -----------------------------
sudo dnf install \
     chromium \
     fedora-user-agent-chrome

# Chrome -------------------------------
sudo dnf install -y \
     google-chrome \
     fedora-user-agent-chrome
     
# Other --------------------------------
sudo dnf install -y \
     mellowplayer \
     scudcloud

# ==============================================================================
# Wallpapers
# https://fedoraproject.org/wiki/Wallpapers
# ==============================================================================
sudo dnf install -y \
     f27-backgrounds-gnome \
     f26-backgrounds-gnome \
#     f25-backgrounds-gnome \
#     f24-backgrounds-gnome \
#     f23-backgrounds-gnome \
     f22-backgrounds-gnome \
     f21-backgrounds-gnome

# For old times sake!
#dnf install \
#     heisenbug-backgrounds-gnome \
#     schroedinger-cat-backgrounds-gnome \
#     spherical-cow-backgrounds-gnome \
#     beefy-miracle-backgrounds-gnome \
#     verne-backgrounds-gnome \
#     lovelock-backgrounds-gnome \
#     laughlin-backgrounds-gnome \
#     goddard-backgrounds-gnome \
#     constantine-backgrounds.noarch \
#     leonidas-backgrounds.noarch \
#     solar-backgrounds.noarch \
#     desktop-backgrounds-waves.noarch \
#     fedorainfinity-backgrounds.noarch
