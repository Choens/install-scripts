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
sudo dnf install xclip
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

# Open Software - Enable the following:
# - Google Chrome: Optional
# - Openh264: Important

# Add the following:
# - https://packages.microsoft.com/rhel/7/prod/
# - https://packages.microsoft.com/yumrepos/vscode

# RPM Fusion ------------------------------------------------------------------
# Go to RPM Fusion and download the appropriate RPM.
# Be sure to get the RPMs for both FREE and NON-FREE.
# This should only take a moment or so.
http://rpmfusion.org/Configuration

# Depending on circumstances, this can take a while to complete.
# Be patient.
sudo dnf update -y

## After updating your computer, it is best to reset.
