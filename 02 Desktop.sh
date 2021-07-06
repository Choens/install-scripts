# ##############################################################################
# 02 - Desktop Applications
#
# Sections:
# - Base
# - Fonts
# - Games
# - Gnome
# - Graphics
# - Internet
# - Multimedia
# - Office
# - Science
# - Utilities
# 
# ##############################################################################



# Base ========================================================================

# If this works, skip the next part.
# Browse to: https://flatpak.org/setup/Fedora/ and download the Flathub
# repository file, or intsall it this way:
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# NVidia Driver
# This is only needed on systems with an NVIDIA card.
# And even then, I don't often install it. I usually just blacklist the nouveau
# driver and use the built-in Intel video card.
sudo dnf install kmod-nvidia

# Fonts ========================================================================
sudo dnf install \
     adobe-source-code-pro-fonts \
     adobe-source-sans-pro-fonts \
     adobe-source-serif-pro-fonts \
     cascadia-code-fonts \
     fira-code-fonts \
     ibm-plex*



# Games ========================================================================
sudo dnf install \
    gnome-chess \
    iagno \
    quadrapassel



# Gnome ========================================================================
dnf search icon-theme
dnf search gtk-theme
dnf search gnome-shell-theme

# Theme
# Things specific to the Gnome Desktop that don't fit anywhere.
# Some of these don't appear to be working???
sudo dnf install \
    flat-remix-theme \
    gnome-shell-extension-dash-to-dock \
    gnome-shell-extension-pomodoro.x86_64 \
    gnome-shell-extension-pop-shell.noarch \
    gnome-shell-extension-pop-shell-shortcut-overrides.noarch \
    gnome-shell-extension-topicons-plus \
    gnome-shell-extension-user-theme \
    materia-gtk-theme


 



# Various Gnome things:
sudo dnf install \
    alacarte \
    dconf-editor \
    gnome-dictionary \
    gnome-documents \
    gnome-extensions-app \
    deja-dup* \
    gnome-feeds \
    gnome-maps \
    gnome-tweaks \
    gnome-weather \
    lollypop \
    remmina

# Doesn't work/exist anymore?
flatpak install org.gnome.Podcasts

# - gnome-power deja-dup


# Graphics =====================================================================
sudo dnf install gpick gthumb.x86_64

## The following are usually not installed on my work computer.
sudo dnf install \
    darktable* \
    gimp gimp-data-extras \
    gimp-high-pass-filter \
    gimp-save-for-web



# Internet =====================================================================
# For this to work, you must first enable the Google Chrome repo in Software.
# While you are there, enable openh264

sudo dnf install \
    chrome-gnome-shell \
    epiphany \
    firefox-wayland \
    google-chrome-stable \
    gydl \
    NetworkManager-l2tp NetworkManager-l2tp-gnome NetworkManager-strongswan.x86_64 NetworkManager-strongswan-gnome \
    sshpass \
    youtube-dl

sudo rpm --import https://download.wavebox.app/static/wavebox_repo.key
sudo wget -P /etc/yum.repos.d/ https://download.wavebox.app/stable/linux/rpm/wavebox.repo
sudo yum install Wavebox


# Office =======================================================================
sudo dnf install \
    evolution  evolution-ews.x86_64 \
    geary \
    hunspell-en-US.noarch hunspell-en.noarch \
    libreoffice.x86_64
    ##thunderbird thunderbird-wayland \

# Time to install some flatpaks    
flatpak install \
    com.getferdi.Ferdi \
    re.sonny.Tangram \
    slack us.zoom.Zoom



# Science & Engineering ========================================================
# I don't always install this.
sudo dnf install pspp


