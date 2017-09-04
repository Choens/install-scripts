# ##############################################################################
# Desktop Applications- Fedora Workstation (Gnome)
#
# Sections:
# - Repos: I use software from the Fedora and UnitedRPM repos.
# - Fonts: I do like me some nice fonts.
# - Power/Application Management
# - CLI Applications
#
# Uses sudo. Your user must be in the /etc/sudoers file.
#
# ##############################################################################



# ===============================================================================
# Repos
# ===============================================================================

# https://github.com/UnitedRPMs/unitedrpms.github.io/blob/master/README.md
sudo -c 'dnf -y install https://raw.githubusercontent.com/UnitedRPMs/unitedrpms/master/RPM/unitedrpms-24-1.noarch.rpm'



# ===============================================================================
# Fonts
# ===============================================================================

#sudo dnf install \
#    google-android-emoji-fonts.noarch \
#    google-droid-sans-* \
#    google-droid-serif-fonts.noarch \
#    google-roboto-fonts.noarch \
#    levien-inconsolata-fonts.noarch 



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
sudo dnf install gstreamer{1,}-{ffmpeg,libav,plugins-{good,ugly,bad{,-free,-nonfree}}} --setopt=strict=0

## Of course, other CLI apps get pulled in later as dependencies.
