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

# Open Software - Enable the following:
# - Google Chrome: Optional
# - Openh264: Important

# After enabling the above, update the system.
sudo dnf upgrade -y

# RPM Fusion ------------------------------------------------------------------
# http://rpmfusion.org/Configuration
# Either install the RPM file from above OR install as per below.
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# After updating your computer, it is best to reset.
# But - honestly - I usually just go on.
