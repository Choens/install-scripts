# ##############################################################################
# Desktop Applications - Ubuntu
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



# ===============================================================================
# Initial
# ===============================================================================

# Just make sure its all there -------------------------------------------------
sudo apt-get install --install-recommends kubuntu-desktop

# Get youself some git ---------------------------------------------------------
sudo apt-get install git

mkdir Git
cd Git
git clone https://github.com/Choens/system-install-scripts.git



# ===============================================================================
# Boot
# UEFI systems benefit from having a few things.
# ===============================================================================
sudo apt-get install \
     grub-efi-amd64 \
     grub2-splashimages \
     shim-signed



# ===============================================================================
# CLI / Libs / Fonts
#
# Sub-Sections:
# - CLI / Libs
# - Fonts
# - Laptop Tools
# - Power Management
# - Hardware Specific Stuff
# ===============================================================================

# CLI / Libs --------------------------------------------------------------------
sudo apt-get install \
     deborphan \
     p7zip-full \
     pwgen \
     sshuttle \
     ubuntu-restricted-extras

# Fonts ------------------------------------------------------------------------
sudo apt-get install --install-suggests \
     fonts-droid \
     fonts-inconsolata \
     fonts-liberation

# Laptop Tools -----------------------------------------------------------------
sudo apt-get install --install-suggests \
     laptop-mode-tools

# Power Management -------------------------------------------------------------
sudo apt-get install --install-suggests \
     cpufrequtils \
     htop \
     powertop



# ==============================================================================
# Desktop Apps
#
# The Desktop Apps section is subdivided as well and yes, there is some over-lap
# between some of the sections and some decisions may seem arbitrary.
#
# Sub-Sections:
# - Automatic Stuff To Install
# - Education & Games
# - Multimedia
# - Office & PIM
# - Tablet
# ==============================================================================

# Automatic Stuff To Install ---------------------------------------------------
# Used to be KDE specific stuff here, but now I include a lot of the software
# I"m going to install on any system I use.
sudo apt-get install \
     bleachbit \
     dconf-tools \
     icedtea-plugin \
     mc \
     owncloud-client \
     uget \
     vokoscreen

# Athletics --------------------------------------------------------------------
sudo apt-get install \
     cyclograph-qt4

# Education & Games ------------------------------------------------------------
sudo apt-get install \
     gnome-chess \
     gnugo \
     ldraw-parts \
     leocad \
     stellarium

# Mozilla ----------------------------------------------------------------------
# I would prefer to install these via Ubuntu, but the versions available tend
# to be old and outdated.
sudo apt-get install \
     #enigmail \
     #xul-ext-calendar-timezones \
     #xul-ext-gdata-provider \
     #xul-ext-lightning \
     xul-ext-password-editor \
     xul-ext-video-without-flash

# Multimedia -------------------------------------------------------------------
sudo apt-get install \
     vlc

# Office & PIM -----------------------------------------------------------------
sudo apt-get install \
     diffpdf

# Tablet -----------------------------------------------------------------------
# Only useful on smaller screen systems or systems you intend to use, at least
# part time, as a tablet.
sudo apt-get install --install-recommends \
     powerstat

# Web Apps ---------------------------------------------------------------------
sudo apt-get install \
     address-book-app \
     camera-app \
     gallery-app \
     mediaplayer-app \
     messaging-app \
     notes-app \
     unity-webapps-amazoncloudreader \
     unity-webapps-gmail \
     unity-webapps-googlecalendar \
     unity-webapps-googledocs \
     unity-webapps-googlenews \
     unity-webapps-launchpad \
     unity-webapps-linkedin \
     unity-webapps-youtube


# ==============================================================================
# Remove Stuff
# ==============================================================================

# LibreOffice ------------------------------------------------------------------
sudo apt-get autoremove --purge flashplugin* libflash*

rm -rf ~/.adobe
