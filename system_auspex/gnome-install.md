# About

Desktop install script for auspex, which is Leila's laptop.

- Operating System: Fedora Workstation
- Desktop: Gnome
- Goal: Educational software, games, zoom calls.



# First Boot

```bash
# Update and then restart.
sudo dnf group upgrade --with-optional Multimedia

# Installs the sugar desktop.
# https://wiki.sugarlabs.org/go/Installation
sudo dnf groupinstall sugar-desktop

# Enable remote management (but don't start the webserver)
sudo dnf install \
    NetworkManager-tui \
    bpytop \
    cmatrix \
    cockpit \
    git \
    hwinfo \
    htop \
    p7zip p7zip-plugins \
    pwgen \
    ranger \
    xclip
```

While the above is running, make life a little more comfortable. Gnome is awesome, but it needs some TLC to really make it shine.



# Accessories

```bash
sudo dnf install \
    gnome-console \
    gnome-tweaks \
    gnome-shell-extension-appindicator.noarch \
    gnome-shell-extension-caffeine \
    gnome-shell-extension-dash-to-dock \
    gnome-shell-extension-gamemode.noarch \
    gnome-shell-extension-just-perfection \
    gnome-shell-extension-native-window-placement \
    gnome-tweaks \
    gnome-usage \
    htop \
    xdg-desktop-portal-gnome
    
#This is the first flatpaks installed; it will take a minute.
flatpak install \
com.mattjakeman.ExtensionManager \
com.github.tchx84.Flatseal
```

From within GNOME Extension Manager, I install:

- GNOME Clipboard or Clipboard History
- Just Perfection
- Material You Color Theming
- Tactile

Under Leila's account, setup dash-to-dock.

# Developer Tools
```bash
# Had to install all of these via Discover . . DKW
flatpak install \
    com.hack_computer.Clubhouse \
    io.gitlab.Turtlico \
    org.laptop.TurtleArtActivity

```



# Education

TODO: Port this to flathub as appropriate

```bash
# KDE:
# A wonderful set of educational software regardless of which desktop you use.
sudo dnf install \
    blinken \
    gcompris* \
    kanagram \
    kbruch \
    kgeography \
    kig \
    klavaro \
    kstars \
    ktouch \
    kturtle \
    kwordquiz \
    marble \
    minuet \
    step

# Other
sudo dnf install \
    stellarium \
    tuxtype2
```



# Games

```bash

# KDE
sudo dnf install \
    aisleriot \
    kapman \
    kdiamond \
    kfourinline \
    khangman \
    kigo \
    klickety \
    knavalbattle \
    kolf \
    ksirk \
    ktuberling \
    kubrick \
    palapeli

# Gnome
sudo dnf install \
    gbrainy \
    gnome-chess \
    gnome-klotski \
    gnome-taquin \
    iagno \
    warble \
    quadrapassel \
    swell-foop

# Other
sudo dnf install \
    frozen-bubble \
    neverball-neverball \
    neverball-neverputt \
    puzzle-master \
    supertux supertuxkart

flatpak install -y\
    app.drey.Blurble \
    com.endlessnetwork.fablemaker \
    com.endlessnetwork.missilemath \
    com.frogatto.Frogatto \
    io.github.retux_game.retux \
    io.thp.numptyphysics \
    net.brinkervii.grapejuice \
    net.sourceforge.lgames.LPairs2 \
    org.gottcode.Connectagram \
    org.gottcode.Tetzle

```



# Graphics

```bash
sudo dnf install \
    gimp gimp-* \
    mtpaint

flatpak install \
    com.github.maoschanz.drawing \
    org.gnome.gThumb \
    com.jgraph.drawio.desktop
```

TODO: Remove things I don't need on this system right now.

# Internet
NA



# Multimedia
NA


# Office
```bash
sudo dnf autoremove libreoffice*
```



# Science and Engineering
NA



# System Settings
NA

