# ##############################################################################
# Desktop Applications- Kubuntu
#
# Author: Andy Choens
#
# Collection of general purpose applications I have installed on Optimus.
#
# Sections:
# - Initial
# - Boot
# - CLI / Fonts
# - Laptop / Power Management
# - Desktop Applications
#
# ##############################################################################

cd ~
mkdir Git
cd Git
git clone https://github.com/Choens/system-install-scripts.git



# ===============================================================================
# Add Ons
# ===============================================================================

# CLI / Libs --------------------------------------------------------------------
dnf install \
    gstreamer-plugins-bad.x86_64 \
    gstreamer-plugins-good.x86_64 \
    gstreamer-plugins-ugly.x86_64 \
    p7zip.x86_64 p7zip-plugins.x86_64 \
    pwgen.x86_64

# Fonts ------------------------------------------------------------------------
dnf install \
    google-android-emoji-fonts.noarch 
    google-droid-sans-* 
    google-droid-serif-fonts.noarch 
    google-roboto-fonts.noarch
    levien-inconsolata-fonts.noarch 
    
# Laptop Tools -----------------------------------------------------------------
dnf install \
    office-runner.x86_64

# Power Management -------------------------------------------------------------
dnf install  \
    htop.x86_64 \
    powertop.x86_64



# ===============================================================================
# Audio
# ===============================================================================
dnf install \
    audacious.x86_64 audacious-plugins.x86_64 \ 
    gnome-music.x86_64



# ===============================================================================
# Games
# ===============================================================================
dnf install \
    chocolate-doom.x86_64 \
    gnome-chess.x86_64 \
    gnome-mahjongg.x86_64 \
    gnome-mines.x86_64 \
    gnome-robots.x86_64 \
    gnugo.x86_64 \
    quadrapassel.x86_64 \
    
# ===============================================================================
# Graphics
# ===============================================================================
dnf install \
    blender.x86_64 \
    darktable.x86_64 \
    entangle.x86_64 \
    gimp.x86_64 gimp-data-extras.noarch \
    gimp-help-browser.x86_64 gimp-high-pass-filter.noarch \
    gnome-photos.x86_64 \
    gpick.x86_64 \
    hugin.x86_64 \
    inkscape.x86_64 inkscape-view.x86_64 \
    nomacs.x86_64 \
    phatch.noarch phatch-cli.noarch nautilus-phatch.noarch \
    photoprint.x86_64 \
    rapid-photo-downloader.noarch \
    rawtherapee.x86_64 \
    photocollage.noarch \
    simple-scan.x86_64
    
# ===============================================================================
# Internet
# ===============================================================================
dnf install \
    epiphany.x86_64 \
    filezilla.x86_64 \
    icedtea-web.x86_64 \
    geary.x86_64


# Installing Chromium is a multi-step piece of joy.
su -c "wget http://repos.fedorapeople.org/repos/spot/chromium-stable/fedora-chromium-stable.repo -O /etc/yum.repos.d/fedora-chromium-stable.repo"
rpm --import http://repos.fedorapeople.org/repos/spot/chromium-stable/spot.gpg
dnf install chromium



# ===============================================================================
# Office
# ===============================================================================
dnf install \
    california.x86_64 \
    gnome-books.x86_64 \
    gnome-calendar.x86_64 \
    gnome-contacts.x86_64 \
    gnome-dictionary.x86_64 \
    gnumeric.x86_64 gnumeric-plugins-extras.x86_64


 
# ===============================================================================
# Science
# ===============================================================================
dnf install \
    engauge-digitizer.x86_64 \
    #freecad.x86_64 \
    spatialite-gui.x86_64 spatialite-tools.x86_64
    
# ===============================================================================
# System
# ===============================================================================
dnf install \
    gnome-logs.x86_64 \
    gnome-nettool.x86_64 \
    gnome-power-manager.x86_64
    
    
# ===============================================================================
# Utilities
# ===============================================================================
dnf install \
    bleachbit.noarch \
    font-manager.x86_64 \
    fonts-tweak-tool.x86_64 \
    gnome-characters.x86_64 \
    gnome-font-viewer.x86_64 \
    gnome-search-tool.x86_64 \
    gnome-shell-extension-pomodoro.x86_64 \
    gnome-shell-extension-calc.noarch \
    gnome-shell-theme-zukitwo.noarch \
    gnome-sound-recorder.noarch \
    gnome-tweak-tool.noarch \
    revelation.x86_64 \
    rodent.x86_64 \
    shutter.noarch \
    sushi.x86_64 \
    system-config-network.x86_64

# ===============================================================================
# Video
# ===============================================================================
dnf install vlc.x86_64 vlc-extras.x86_64

# ==============================================================================
# Wallpapers
# ==============================================================================

sudo dnf install \
     f22-backgrounds-gnome.noarch \
     f21-backgrounds-gnome.noarch \
     heisenbug-backgrounds-gnome \
     schroedinger-cat-backgrounds-gnome \
     spherical-cow-backgrounds-gnome \
     beefy-miracle-backgrounds-gnome \
     verne-backgrounds-gnome \
     lovelock-backgrounds-gnome \
     laughlin-backgrounds-gnome \
     goddard-backgrounds-gnome \
     constantine-backgrounds.noarch \
     leonidas-backgrounds.noarch \
     solar-backgrounds.noarch \
     desktop-backgrounds-waves.noarch \
     fedorainfinity-backgrounds.noarch

# todo
#moonshine # F07
#zod # F06
#bordeaux # F05
#stentz # F04
#heidelberg # F03
#tettnang # F02
#yarrow # F01 
