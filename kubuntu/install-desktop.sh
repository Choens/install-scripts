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
     grub2-splashimages \
     kde-config-grub2 \
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
     kde-cli-tools \
     kgpg \
     kio-ftps \
     konsolekalendar \
     kubuntu-restricted-extras \
     kwalletcli \
     p7zip-full \
     pwgen \
     sshuttle

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
     debconf-kde-helper \
     filelight \
     icedtea-plugin \
     kdeconnect \
     kdepim \
     kdewallpapers \
     kde-service-menu-fuseiso \
     kde-telepathy-call-ui \
     kget \
     konq-plugins \
     konqueror \
     kpart-webkit \
     marble \
     marble-plugins \
     owncloud-client \
     plasma-widget-message-indicator \
     plasma-widget-quickaccess \
     plasma-widget-weatherforecast \
     plasma-widget-cwp \
     ubuntu-wallpapers-vivid \
     vokoscreen \
     yakuake

sudo apt-get install lxde xfce4 xfce4-goodies xfce4-power-manqager

# Athletics --------------------------------------------------------------------
sudo apt-get install \
     cyclograph-qt4

# Education & Games ------------------------------------------------------------
sudo apt-get install \
     gnugo \
     kajongg \
     knights \
     konquest \
     kstars \
     ldraw-parts \
     leocad \

# Multimedia -------------------------------------------------------------------
sudo apt-get install \
     juk \
     kamerka \
     vlc

# Office & PIM -----------------------------------------------------------------
sudo apt-get install \
     calligra \
     calligragemini \
     chromium-browser \
     diffpdf \
     okular-extra-backends

-- remove mypaint, gimp

# Tablet -----------------------------------------------------------------------
# Only useful on smaller screen systems or systems you intend to use, at least
# part time, as a tablet.
sudo apt-get install --install-recommends \
     kubuntu-active \
     kdepim-mobile \
     marble-mobile\
     notes-mobile \
     powerstat\
     tasks-mobile    



# ==============================================================================
# Remove Stuff
# ==============================================================================

# LibreOffice ------------------------------------------------------------------
sudo apt-get autoremove --purge flashplugin* libflash*

rm -rf ~/.adobe

