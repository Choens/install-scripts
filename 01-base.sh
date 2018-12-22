# ##############################################################################
# 01 - Base
#
# Sections:
# - Fonts: I do like me some nice fonts.
# - Power/Application Management
# - CLI Applications
#
# Uses sudo. Your user must be in the /etc/sudoers file.
#
# ##############################################################################



# ===============================================================================
<<<<<<< HEAD
# Fonts
# ===============================================================================
sudo dnf install \
    adobe-source-code-pro-fonts



# ===============================================================================
# Power/Application Management
# ===============================================================================
sudo dnf install  \
     htop \
     powertop \
     tlp

## Test to see if powertop is running correctly.
sudo systemctl start powertop.service
sudo systemctl start tlp.service  
sudo systemctl start tlp-sleep.service
=======
# Power/Application Management
# ===============================================================================
sudo dnf install -y \
    htop \
    powertop \
    tlp
s
# Test to see if powertop/tlp run correctly.
sudo systemctl start powertop.service
sudo systemctl start tlp.service
>>>>>>> b4c5932ad725e9456e782598e57691f3eb23a5dc

# IF this works OK . . . 

# Enable powertop on startup.
sudo systemctl enable powertop.service
<<<<<<< HEAD
sudo systemctl enable tlp.service  
=======
sudo systemctl enable tlp.service
>>>>>>> b4c5932ad725e9456e782598e57691f3eb23a5dc
sudo systemctl enable tlp-sleep.service

# Make sure you aren't plugged in!
# There may be some screen flicker.
# https://hobo.house/2015/12/18/linux-laptop-power-usage-tuning-with-powertop/
sudo powertop --calibrate --html

<<<<<<< HEAD
## Sets Everything Up Nicely.
sudo powertop --autotune

## Settings
## /etc/default/tlp
=======
# Sets Everything Up Nicely.
sudo powertop --auto-tune

# Settings to review
# /etc/default/tlp
>>>>>>> b4c5932ad725e9456e782598e57691f3eb23a5dc
