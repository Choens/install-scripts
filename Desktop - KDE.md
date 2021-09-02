# About

Tools & things removeed when I'm focusing on using KDE.

```bash
## Consider if this makes sense.
sudo dnf remove @gnome-desktop
sudo dnf swap @gnome-desktop @kde-desktop
sudo systemctl enable sddm.service -f
sudo dnf remove --allowerasing fedora-release-identity-kde fedora-release-kde.noarch



sudo dnf remove \
    gnome-themes-extra \
    ibus-gtk3.x86_64 \
    libappindicator-gtk3.x86_64 \
    libindicator-gtk3.x86_64 \
    libunity-gtk3-parser.x86_64 
```

# Accessories

```bash
sudo dnf remove \
    ark \
    filelight \
    kalarm \
    kbackup \
    kclock \
    kamoso.x86_64 \
    kate.x86_64 kate-plugins.x86_64 \
    kde-connect.x86_64 \
    kdialog \
    kgpg \
    kleopatra \
    keepassxc \
    ktimer ktimetracker \
    latte-dock.x86_64 \
    sweeper
```


# Developer Tools

```bash
sudo dnf remove \
    git-cola \
    kompare \
    ksshaskpass \
    neovim-qt \
    yakuake
```



# Education

```bash
## Something for Leila.
sudo dnf remove marble kstars blinken tuxpaint gcompris kbruch kgeography 

## And something for myself.
sudo dnf remove \
    LabPlot \
    cantor cantor-R.x86_64 cantor-julia.x86_64 \
    kbibtex \
    kile \
    rkward
```



# Games

```bash
# Something for Leila
sudo dnf remove \
    frozen-bubble \
    kapman \
    kblocks \
    kfourinline \
    opensurge \
    Ri-li \
    supertuxcart \
    supertux \

# And something for me.
sudo dnf remove \
    kigo \
    kmahjongg \
    knights \
    konquest \
    kreversi \
    ksquares   
```

# Graphics

```bash
sudo dnf remove \
    darktable* \
    digikam \
    kcolorchooser \
    krita \
    skanlite
```

# Internet

seafile or owncloud???
https://www.seafile.com

ferdi v franz


```bash
sudo dnf remove \
    seafile.x86_64 seafile-client.x86_64

sudo dnf remove \
    falkon.x86_64 falkon-kde.x86_64 falkon-pdfreader.x86_64 \
    krdc \
    otter-browser \
    plasma-browser-integration.x86_64\
    qutebrowser \
    rssguard

flatpak remove \
    org.kde.angelfish \
    me.hyliu.fluentreader
```


# Multimediaxdg-desktop-portal

```bash
sudo dnf remove \
    dragon.x86_64 \
    elisa-player.x86_64 \
    kmplayer

flatpak remove \
    co.headsetapp.headset \
    io.freetubeapp.FreeTube \
    io.lbry.lbry-app
```



# Office

- skrooge v  kmymoney


```bash
sudo dnf remove kmymoney skrooge libreoffice-kf5.x86_64
```

# System

- Change to Dark Theme
- Three Activities:
  - Default (duh)
  - IO
  - Programming
- On AC Power
  - Dim Screen 30 minutes, Switch screen off after 60 and suspend to sleep after 120

```bash
sudo dnf remove \
    filelight \
    ksysguard \
    ksystemlog \
    yakuake
```



# Delete

These are things I tend to delete when focusing on a KDE Desktop.

```bash
sudo dnf remove *akonadi* evolution geary
``` 