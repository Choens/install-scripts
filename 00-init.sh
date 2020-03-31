# ##############################################################################
# 00 - Init
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

# RSA Key ----------------------------------------------------------------------
# Reference: https://help.github.com/articles/connecting-to-github-with-ssh/
# Copies the contents of the id_rsa.pub file to your clipboard.
# Give this to GitHub, then proceed.
# ONLY THEN May you clone this repo
sudo dnf install -y xclip
ssh-keygen -t rsa -b 4096 -C "andy.choens@gmail.com"
ssh-add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub

# Clone ------------------------------------------------------------------------
cd ~
mkdir Git
cd Git
git clone https://github.com/Choens/install-scripts.git


# ===============================================================================
# Sources
# ===============================================================================

# Open Software - Install/Enable the following:
 sudo dnf install fedora-workstation-repositories

# Open the default repo management tool and activate the following:
# - Google Chrome: Optional
# - Openh264: Important

# RPM Fusion ------------------------------------------------------------------
# http://rpmfusion.org/Configuration
# Be sure to enable RPM Fusion in Software.
