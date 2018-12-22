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

<<<<<<< HEAD
# Add the following (check they are current):
# Reference: https://docs-old.fedoraproject.org/en-US/Fedora/23/html/System_Administrators_Guide/sec-Managing_DNF_Repositories.html
sudo dnf config-manager --add-repo https://packages.microsoft.com/rhel/7.4/prod/
sudo dnf config-manager --add-repo https://packages.microsoft.com/yumrepos/vscode

# RPM Fusion ------------------------------------------------------------------
# Go to RPM Fusion and download the appropriate RPM.
# Be sure to get the RPMs for both FREE and NON-FREE.
# This should only take a moment or so.
# http://rpmfusion.org/Configuration
=======
# After enabling the above, update the system.
sudo dnf upgrade -y

# RPM Fusion ------------------------------------------------------------------
# http://rpmfusion.org/Configuration
# Either install the RPM file from above OR install as per below.
>>>>>>> b4c5932ad725e9456e782598e57691f3eb23a5dc
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# After updating your computer, it is best to reset.
# But - honestly - I usually just go on.
