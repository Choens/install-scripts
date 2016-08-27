# ##############################################################################
# Desktop Applications- Fedora Workstation (Gnome)
#
# Author: Andy Choens
#
# Collection of general purpose applications I have installed on Optimus.
#
# Sections:
# - Init
# - Desktop
# - Games
# - Graphics
# - Internet
# - Multimedia
#
# Uses sudo. Your user must be in the /etc/sudoers file.
#
# ##############################################################################

# ===============================================================================
# Repos
# ===============================================================================

# https://github.com/UnitedRPMs/unitedrpms.github.io/blob/master/README.md
su -c 'dnf -y install https://raw.githubusercontent.com/UnitedRPMs/unitedrpms/master/RPM/unitedrpms-24-1.noarch.rpm'



# ===============================================================================
# Desktop
# ===============================================================================

# Fonts ------------------------------------------------------------------------
#dnf install \
#    google-android-emoji-fonts.noarch \
#    google-droid-sans-* \
#    google-droid-serif-fonts.noarch \
#    google-roboto-fonts.noarch \
#    levien-inconsolata-fonts.noarch 

# Power Management -------------------------------------------------------------
dnf install  \
     htop.x86_64 \
     powertop.x86_64 \
     pwgen.x86_64

## Turns powertop service on. Test this. IF it is OK . . . 
systemctl start powertop.service

## This will make powertop automatic on startup.
systemctl enable powertop.service

## Useful Laptop Utilities -----------------------------------------------------
dnf install \
     gnome-power-manager.x86_64 \
     office-runner.x86_64

## Useful Utilities ------------------------------------------------------------
dnf install \
     bleachbit.noarch \
     fonts-tweak-tool.x86_64 \
     gnome-books.x86_64 \
     gnome-dictionary.x86_64 \
     gnome-logs.x86_64 \
     gnome-maps.x86_64 \
     gnome-nettool.x86_64 \
     gnome-shell-extension-pomodoro.x86_64 \
     gnome-shell-extension-calc.noarch \
     gnome-tweak-tool.noarch \
     p7zip-gui.x86_64 p7zip.x86_64 p7zip-plugins.x86_64

# Do Not install until I can replace Evolution.
#dnf install \
#    gnome-calendar.x86_64 \
#    gnome-contacts.x86_64

# Wallpapers --------------------------------------------------------------------
dnf install \
     f23-backgrounds-gnome.noarch \
     f22-backgrounds-gnome.noarch \
     f21-backgrounds-gnome.noarch

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



# ===============================================================================
# Games
# ===============================================================================

# Desktop Games (time wasters) --------------------------------------------------
dnf install \
     gnome-chess.x86_64 \
     gnome-mahjongg.x86_64

#dnf install \
#    gnome-mines.x86_64 \
#    gnome-robots.x86_64 \
#    gnugo.x86_64 \
#    quadrapassel.x86_64



# ===============================================================================
# Graphics
# ===============================================================================

dnf install \
     darktable.x86_64 \
     entangle.x86_64
     gimp.x86_64 gimp-data-extras.noarch \
     gimp-help-browser.x86_64 gimp-high-pass-filter.noarch \
     gnome-photos.x86_64 \
     gpick.x86_64 \
     gthumb.x86_64 \
     hugin.x86_64 \
     inkscape.x86_64 inkscape-view.x86_64 \
     photocollage.noarch
     photoprint.x86_64 \
     rapid-photo-downloader.noarch \
     rawtherapee.x86_64 \
     simple-scan.x86_64

# HIDPI Theme for Gimp
#https://github.com/jedireza/gimp-hidpi

# For 3D
dnf install \
     blender.x86_64 \



# ===============================================================================
# Internet
# ===============================================================================

# Epiphany has really turned into a decent browser.
dnf install \
     corebird.x86_64 \
     epiphany.x86_64

# From United RPMs
# I'm trying to wean myself off Chromium.
#dnf install chromium


# ===============================================================================
# Multimedia
# ===============================================================================

# Libs/ Utils -------------------------------------------------------------------
# Comes out of the default Fedora repos
#dnf install gstreamer-plugins-good.x86_64 pavucontrol.x86_64

## Music Players ----------------------------------------------------------------
dnf install gnome-music.x86_64

#https://copr.fedorainfracloud.org/coprs/gnumdk/lollypop/
dnf copr enable gnumdk/lollypop 

dnf install lollypop.noarch

# Video Players -----------------------------------------------------------------
dnf install snappy.x86_64

# Comes from United RPMs.
dnf install gstreamer{1,}-{ffmpeg,libav,plugins-{good,ugly,bad{,-free,-nonfree}}} --setopt=strict=0
dnf install mpv.x86_64 ffmpeg.x86_64 gnome-mpv.x86_64

# Record ------------------------------------------------------------------------
# I don't usually need this.
#dnf install gnome-sound-recorder.noarch

# SE Linux Policies
# https://docs.fedoraproject.org/en-US/Fedora/13/html/Security-Enhanced_Linux/sect-Security-Enhanced_Linux-Working_with_SELinux-Enabling_and_Disabling_SELinux.html
# http://www.cyberciti.biz/faq/howto-turn-off-selinux/



# ===============================================================================
# Custom Config
# ===============================================================================

# Tweaks (Using Gnome Tweak Tool ------------------------------------------------
# Appearance:           None
# Desktop:              None
# Extensions:           Alternate Tab
# Fonts:                None
# Keyboard & Mouse:     None
# Power:                None
# Startup Applications: None
# Top Bar:              Show Date
# Typing:               None
# Windows:              Maximize, Minimize
# Workspaces:           None

# Mouse / Touchap
# Enable Tap to Click
