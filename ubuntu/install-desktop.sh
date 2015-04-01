# ##############################################################################
# Desktop Applications
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

# install the following if you need / use VPN services.
# openvpn is needed to connect to my VPN service.
#sudo apt-get install \
#openconnect \
#openswan \
#openvpn
# If you install any of these, be sure to install the network-manager frontend.

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
     icedtea-plugin \
     mc \
     owncloud-client \
     tomahawk \
     ubuntu-desktop-next \
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
