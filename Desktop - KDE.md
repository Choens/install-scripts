# About

Tools & things installed when I'm focusing on using KDE.

```bash
sudo dnf remove @gnome-desktop
dnf swap @gnome-desktop @kde-desktop
sudo systemctl enable sddm.service -f
```

# Accessories

```bash
sudo dnf install \
    filelight \
    kalarm \
    kbackup \
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
sudo dnf install \
    git-cola \
    kompare \
    neovim-qt \
    yakuake
```



# Education

```bash
## Something for Leila.
sudo dnf install marble kstars blinken tuxpaint gcompris kbruch kgeography 

## And something for myself.
sudo dnf install \
    LabPlot \
    cantor cantor-R.x86_64 cantor-julia.x86_64 \
    kbibtex \
    kile \
    rkward
```



# Games

```bash
# Something for Leila
sudo dnf install \
    frozen-bubble \
    kapman \
    kblocks \
    kfourinline \
    opensurge \
    Ri-li \
    supertuxcart \
    supertux \

# And something for me.
sudo dnf install \
    kigo \
    kmahjongg \
    knights \
    konquest \
    kreversi \
    ksquares   
```

# Graphics

```bash
sudo dnf install \
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
sudo dnf install \
    seafile.x86_64 seafile-client.x86_64

sudo dnf install \
    falkon.x86_64 falkon-kde.x86_64 falkon-pdfreader.x86_64 \
    krdc \
    otter-browser \
    plasma-browser-integration.x86_64\
    qutebrowser \
    rssguard

flatpak install \
    org.kde.angelfish \
    me.hyliu.fluentreader
```


# Multimedia

```bash
sudo dnf install \
    dragon.x86_64 \
    elisa-player.x86_64 \
    kmplayer

flatpak install \
    co.headsetapp.headset \
    io.freetubeapp.FreeTube \
    io.lbry.lbry-app
```



# Office

- skrooge v  kmymoney


```bash
sudo dnf install kmymoney skrooge libreoffice-kf5.x86_64

sudo flatpak install org.onlyoffice
```

# System

- Change to Dark Theme
- 
- On AC Power
  - Dim Screen 30 minutes, Switch screen off after 60 and suspend to sleep after 120

```bash
sudo dnf install \
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