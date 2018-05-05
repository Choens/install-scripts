# ##############################################################################
# 02 - GNOME Applications
#
# Sections:
# - GNOME
# - Wallpapers
#
# Uses sudo. Your user must be in the /etc/sudoers file.
#
# ##############################################################################



# ##############################################################################
## GNOME
# ##############################################################################
sudo dnf install \
     bleachbit.noarch \
     epiphany.x86_64 \
     evince-nautilus.x86_64 \
     fonts-tweak-tool.x86_64 \
     gnome-tweaks \
     gnome-books.x86_64 \
     gnome-chess.x86_64 \
     gnome-dictionary.x86_64 \
     gnome-logs.x86_64 \
     gnome-mahjongg.x86_64 \
     gnome-maps.x86_64 \
     gnome-mpv.x86_64 \
     gnome-music.x86_64 \
     gnome-nettool.x86_64 \
     gnome-packagekit-updater.x86_64 \
     gnome-photos.x86_64 \
     gnome-power-manager.x86_64 \
     gnome-shell-extension-alternate-tab.noarch \
     gnome-shell-extension-calc.noarch \
     gnome-shell-extension-do-not-disturb-button \
     gnome-shell-extension-media-player-indicator.noarch \
     gnome-shell-extension-topicons-plus

# I don't usually need this.
#dnf install gnome-sound-recorder.noarch



# ##############################################################################
# Wallpapers
# ##############################################################################
#sudo dnf install \
#     f25-backgrounds-gnome.noarch \
#     f24-backgrounds-gnome.noarch \
#     f23-backgrounds-gnome.noarch \
#     f22-backgrounds-gnome.noarch \
#     f21-backgrounds-gnome.noarch

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
