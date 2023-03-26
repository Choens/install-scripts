# About

Desktop install script for auspex, which is Leila's laptop.

- Operating System: Fedora Workstation
- Desktop: Gnome
- Goal: Educational software, games, zoom calls.



# First Boot

```bash
sudo dnf group upgrade --with-optional Multimedia

# Enable remote management (but don't start the webserver)
sudo dnf install cockpit

sudo dnf install \
    NetworkManager-tui \
    bpytop \
    cmatrix \
    hwinfo \
    htop \
    p7zip p7zip-plugins \
    pwgen \
    ranger
```

While the above is running, make life a little more comfortable. Gnome is awesome, but it needs some TLC to really make it shine.



# Accessories

```bash
sudo dnf install \
    gnome-console \
    gnome-tweaks \
    gnome-shell-extension-dash-to-dock \
    gnome-usage \
    xdg-desktop-portal-gnome
    
#This is the first flatpaks installed; it will take a minute.
flatpak install \
com.mattjakeman.ExtensionManager \
com.github.tchx84.Flatseal
```


# Developer Tools
NA



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

# Had to install all of these via Discover . . DKW
flatpak install \
    com.hack_computer.Clubhouse
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

