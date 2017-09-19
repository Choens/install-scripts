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

# Sets up repo
sudo dnf config-manager --add-repo=https://unitedrpms.github.io/unitedrpms.repo
sudo dnf upgrade




# Depending on circumstances, this can take a while to complete.
# Be patient.
sudo dnf update

## After updating your computer, it is best to reset.
