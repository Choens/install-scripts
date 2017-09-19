# ##############################################################################
# First- Fedora Workstation (Gnome)
#
# Author: Andy Choens
#
# Collection of things I want installed immediately.
#
# Uses sudo. Your user must be in the /etc/sudoers file.
#
# ##############################################################################



# ===============================================================================
# Init
# ===============================================================================

# Anything new / interesting?
dnf grouplist

# Install Gnome Tweak Tool
sudo dnf install gnome-tweak-tool xclip

# After you have goten an RSA Key: https://help.github.com/articles/connecting-to-github-with-ssh/
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
ssh-add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub
# Copies the contents of the id_rsa.pub file to your clipboard.
# Give this to GitHub, then proceed.
# ONLY THEN May you clone this repo
cd ~
mkdir Git
cd Git
git clone https://github.com/Choens/install-scripts.git


# ===============================================================================
# Sources
# ===============================================================================

# SHVR Kernel -----------------------------------------------------------------
#sudo dnf copr enable shvr/surface-pro-3-kernel

# RPM Fusion ------------------------------------------------------------------
# Go to RPM Fusion and download the appropriate RPM.
# Be sure to get the RPMs for both FREE and NON-FREE.
# This should only take a moment or so.
#http://rpmfusion.org/Configuration

# United RPMs ------------------------------------------------------------------
# https://unitedrpms.github.io/
sudo rpm --import https://raw.githubusercontent.com/UnitedRPMs/unitedrpms/master/URPMS-GPG-PUBLICKEY-Fedora-24
sudo dnf -y install https://github.com/UnitedRPMs/unitedrpms/releases/download/6/unitedrpms-$(rpm -E %fedora)-6.fc$(rpm -E %fedora).noarch.rpmsudo dnf upgrade

# Depending on circumstances, this can take a while to complete.
# Be patient.
sudo dnf update -y

## After updating your computer, it is best to reset.
