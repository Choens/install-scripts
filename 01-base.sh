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
# Fonts
# ===============================================================================

sudo dnf install \
    adobe-source-code-pro-fonts.noarch



# ===============================================================================
# Power/Application Management
# ===============================================================================

sudo dnf install  \
     htop.x86_64 \
     powertop.x86_64

## Test to see if powertop is running correctly.
sudo systemctl start powertop.service

## IF this works OK . . . 

## Enable powertop on startup.
sudo systemctl enable powertop.service

## Make sure you aren't plugged in!
## There may be some screen flicker.
## https://hobo.house/2015/12/18/linux-laptop-power-usage-tuning-with-powertop/
sudo powertop --calibrate --html

## Sets Everything Up Nicely.
sudo powertop --autotune



# ===============================================================================
# CLI Applications
# ===============================================================================

sudo dnf install  \
     ffmpeg.x86_64 \
     mpv.x86_64 \
     p7zip.x86_64 p7zip-plugins.x86_64 \
     pwgen.x86_64 \
     ranger

## From United RPMs, everything I need to play some funky white-tunes.
## sudo dnf install gstreamer{1,}-{ffmpeg,libav,plugins-{good,ugly,bad{,-free,-nonfree}}} --setopt=strict=0

## Of course, other CLI apps get pulled in later as dependencies.
