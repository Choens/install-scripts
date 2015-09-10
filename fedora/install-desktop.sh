# ##############################################################################
# Desktop Applications- Kubuntu
#
# Author: Andy Choens
#
# Collection of general purpose applications I have installed on Optimus.
#
# Sections:
# - Init
# - Addons
# - Audio
# - Games
# - Graphics
# - Internet
# - Office
# - Science
# - System
# - Utilities
# - Video
# - Wallpapers
#
# Instructions here assume you are using an administrator. If you aren't,
# you will need to alter the instructions.
#
# ##############################################################################



# ===============================================================================
# Init
# ===============================================================================

# This step may not be necessary if you are copying files from another computer.
# Just copy this file too.
sudo dnf install git
cd ~
mkdir Git
cd Git
git clone https://github.com/Choens/system-install-scripts.git


sudo dnf copr enable shvr/surface-pro-3-kernel

# Go to RPM Fusion and download the appropriate RPM.
# Be sure to get the RPMs for both FREE and NON-FREE.
# This should only take a moment or so.
http://rpmfusion.org/Configuration

# Depending on circumstances, this can take a while to complete.
# Be patient.
sudo dnf update

## After updating your computer, it is best to reset.

# ===============================================================================
# Add Ons
# ===============================================================================

# CLI / Libs --------------------------------------------------------------------
sudo dnf install \
    gstreamer-plugins-bad.x86_64 \
    gstreamer-plugins-good.x86_64 \
    gstreamer-plugins-ugly.x86_64 \
    p7zip.x86_64 p7zip-plugins.x86_64 \
    pwgen.x86_64

# Fonts ------------------------------------------------------------------------
# TODO: This isn't working.
sudo dnf install \
    google-android-emoji-fonts.noarch \
    google-droid-sans-* \
    google-droid-serif-fonts.noarch \ 
    google-roboto-fonts.noarch \
    levien-inconsolata-fonts.noarch 
    
# Laptop Tools -----------------------------------------------------------------
sudo dnf install \
    office-runner.x86_64

# Power Management -------------------------------------------------------------
sudo dnf install  \
    htop.x86_64 \
    powertop.x86_64

# This will run powerttop --auto-tune every time your system comes on.
# This is only recommended for laptops and, I DO NOT recommend you run
# this blindly. Check this with YOUR HARDWARE first to make sure it doesn't
# cause problems. To test, just run (from the command line)
# sudo powertop --auto-tune
# Note: I am assuming your user is in sudoers. Modify as necessary.
@reboot /usr/sbin/powertop --auto-tune > /dev/null 2>&1




# ===============================================================================
# Audio
# ===============================================================================

sudo dnf install gnome-music.x86_64



# ===============================================================================
# Games
# ===============================================================================

sudo dnf install \
    gnome-chess.x86_64 \
    gnome-mahjongg.x86_64 \
    gnome-mines.x86_64 \
    gnome-robots.x86_64 \
    gnugo.x86_64 \
    quadrapassel.x86_64


    
# ===============================================================================
# Graphics
# ===============================================================================

sudo dnf install \
    blender.x86_64 \
    darktable.x86_64 \
    entangle.x86_64 \
    gimp.x86_64 gimp-data-extras.noarch \
    gimp-help-browser.x86_64 gimp-high-pass-filter.noarch \
    gnome-photos.x86_64 \
    gpick.x86_64 \
    hugin.x86_64 \
    inkscape.x86_64 inkscape-view.x86_64 \
    photoprint.x86_64 \
    rapid-photo-downloader.noarch \
    rawtherapee.x86_64 \
    photocollage.noarch \
    simple-scan.x86_64


    
# ===============================================================================
# Internet
# ===============================================================================

sudo dnf install \
    epiphany.x86_64 \
    filezilla.x86_64 \
    icedtea-web.x86_64 \
    geary.x86_64

# Chromium ---------------------------------------------------------------------
# Installing Chromium is a multi-step piece of joy.
su -c "wget http://repos.fedorapeople.org/repos/spot/chromium-stable/fedora-chromium-stable.repo -O /etc/yum.repos.d/fedora-chromium-stable.repo"
sudo rpm --import http://repos.fedorapeople.org/repos/spot/chromium-stable/spot.gpg
sudo dnf install chromium



# ===============================================================================
# Office
# ===============================================================================
sudo dnf install \
    california.x86_64 \
    gnome-books.x86_64 \
    gnome-calendar.x86_64 \
    gnome-contacts.x86_64 \
    gnome-dictionary.x86_64



# ===============================================================================
# Science
# ===============================================================================

sudo dnf install engauge-digitizer.x86_64s.x86_64

## This one seems too big to justify.
##sudo dnf install freecad.x86_64

sudo dnf install spatialite-gui.x86_64 spatialite-tools.x86_64


    
# ===============================================================================
# System
# ===============================================================================
sudo dnf install \
    gnome-logs.x86_64 \
    gnome-nettool.x86_64 \
    gnome-power-manager.x86_64

    
    
# ===============================================================================
# Utilities
# ===============================================================================
sudo dnf install \
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
sudo dnf install mpv.x86_64 snappy-player.x86_64



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
