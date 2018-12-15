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

# IF this works OK . . . 

# Enable powertop on startup.
sudo systemctl enable powertop.service
sudo systemctl enable tlp.service
sudo systemctl enable tlp-sleep.service

# Make sure you aren't plugged in!
# There may be some screen flicker.
# https://hobo.house/2015/12/18/linux-laptop-power-usage-tuning-with-powertop/
sudo powertop --calibrate --html

# Sets Everything Up Nicely.
sudo powertop --auto-tune

# Settings to review
# /etc/default/tlp
