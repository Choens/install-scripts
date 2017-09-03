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


# This step may not be necessary if you are copying files from another computer.
# Just copy this file too.
sudo dnf install git
cd ~
mkdir Git
cd Git
git clone https://github.com/Choens/system-install-scripts.git


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
