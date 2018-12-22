# ##############################################################################
# 03 - Desktop Applications
#
# Sections:
# - Internet
#
# Uses sudo. Your user must be in the /etc/sudoers file.
#
# ##############################################################################



# ##############################################################################
## KDE
# ##############################################################################
sudo dnf install \
     calligra calligraplan calligra-karbon calligra-stage \
     kapman knights konquest \
     marble \
     mellowplayer \
     sayonara \
     skanlite \
     vlc \
     yakuake

# I don't usually need this.
#dnf install gnome-sound-recorder.noarch



# ===============================================================================
# Internet
# ===============================================================================

## At work - I install Chrome because Chromium lacks chromecast support.

# Chromium -----------------------------
#sudo dnf install \
#     chromium \
#     fedora-user-agent-chrome

# Chrome -------------------------------
sudo dnf install \
     google-chrome-stable \
     fedora-user-agent-chrome
     


# ##############################################################################
# Wallpapers
# ##############################################################################
#sudo dnf install \
#     f25-backgrounds-gnome \
#     f24-backgrounds-gnome \
#     f23-backgrounds-gnome \
#     f22-backgrounds-gnome \
#     f21-backgrounds-gnome

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



# ##############################################################################
# Remove
# Removes some stuff I don't need.
# ##############################################################################
sudo dnf remove k3b* amarok* 
