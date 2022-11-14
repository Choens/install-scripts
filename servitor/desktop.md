# About

Desktop install script for servitor, which is usually the name I give to the family laptop which is most heavily used by my daughter. Although typically a laptop, it does stay plugged in most of the time and I usually administer it remotely.

- Operating System: Fedora Workstation
- Desktop: Gnome
- Goal: Educational software, games, family zoom calls.



# First Boot

```bash
sudo dnf group upgrade --with-optional Multimedia

# Enable remote management (but don't start the webserver)
sudo dnf install cockpit

sudo dnf install \
    NetworkManager-tui \
    bpytop \
    hwinfo \
    htop \
    p7zip p7zip-plugins \
    pwgen \
    ranger
```

While the above is running, make life a little more comfortable. Gnome is awesome, but it needs some TLC to really make it shine.

Open `Settings`:

- Device Name: servitor
- Appearance: Dark
- Multitasking:
    - Set `Hot Corner` to FALSE. I never use it.
    - Set `Application Switching` to `Include applications from the current workspace only`.
- Displays:
    - Set my desktop monitor to be the primary display.
- Mouse and Touchpad:
    - Mouse:
        - Don't change anything.
    - Touchpad:
        - Set `Natural Scrolling` to FALSE.
        - Enable "Tap to Click".
- Accessibility:
    - Set `Always Show Accessibilty Menu` to TRUE
    - Make the mouse cursor one step bigger.
- Color: Calibrate screen
- Users: 
    - Pick a cool icon. Lately, I've been liking the bike.

Then run the following bash commands.

```bash
sudo dnf group upgrade --with-optional Multimedia

# Enable remote management (but don't start the webserver)
sudo dnf install cockpit
```



# Accessories

## Fonts

```bash
# Fonts -------------------------------
sudo dnf install \
     adobe-source-sans-pro-fonts \
     adobe-source-serif-pro-fonts \
     cascadia-code-fonts \
     fira-code-fonts \
     ibm-plex*

sudo dnf install \
    dconf-editor \
    gnome-dictionary \
    deja-dup* \
    file-roller file-roller-nautilus \
    gnome-console gnome-console-nautilus \
    gnome-tweaks \
    gnome-shell-extension-caffeine.noarch \
    gnome-shell-extension-dash-to-dock.noarch \
    gnome-usage \
    solaar  \
    xdg-desktop-portal-gnome
    
#This is the first flatpaks installed; it will take a minute.
flatpak install \
com.mattjakeman.ExtensionManager \
com.github.tchx84.Flatseal
```

## Software Setup

- Open gnome software.
- Enable flathub:
    - `flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo`
    - Reference: https://developer.fedoraproject.org/deployment/flatpak/flatpak-usage.html
    - As a general rule, I tend to install from Flathub rather than the Fedora flatpacks because I don't want _that_ many copies of the base dependencies.



# Developer Tools
None at the moment.



# Education
```bash
sudo dnf install \
    artikulate.x86_64 \
    blinken.x86_64 \
    celestia \
    colobot \
    gcompris* \
    kalgebra.x86_64 \
    kalzium.x86_64 \
    kanagram.x86_64 \
    kbruch.x86_64 \
    kgeography.x86_64 \
    khangman.x86_64 \
    kig.x86_64 \
    klavaro.x86_64 \
    klettres.x86_64 \
    kmplot.x86_64 \
    kstars.x86_64 \
    ktouch.x86_64 \
    kturtle.x86_64 \
    kwordquiz.x86_64 \
    marble.x86_64 \
    minuet.x86_64 \
    pairs.x86_64 \
    parley.x86_64 \
    scratch.noarch scratch-projects.noarch \
    stellarium.x86_64 \
    step.x86_64 \
    tuxtype2.x86_64

# Had to install all of these via Discover . . DKW
flatpak install \
    com.mojang.Minecraft \
     app.drey.Blurble \
     com.hack_computer.Clubhouse \
     com.endlessnetwork.fablemaker

```



# Games
```bash
sudo dnf install \
    aisleriot \
    alex4 \
    frozen-bubble \
    gbrainy \
    gnome-chess \
    gnome-klotski \
    gnome-mahjongg \
    gnome-mines \
    gnome-sudoku \
    gnome-taquin \
    gnome-tetravex \
    hedgewars.x86_64 \
    iagno \
    kapman.x86_64 \
    katomic.x86_64 \
    kblocks.x86_64 \
    kbounce.x86_64 \
    kdiamond.x86_64 \
    khangman.x86_64 \
    kigo.x86_64 \
    klickety.x86_64 \
    klines.x86_64 \
    knavalbattle.x86_64 \
    knights.x86_64 \
    kolf.x86_64 \
    konquest.x86_64 \
    kreversi.x86_64 \
    ksirk.x86_64 \
    ksquares.x86_64 \
    ktuberling \
    kubrick.x86_64 \
    neverball-neverball.x86_64 \
    neverball-neverputt.x86_64 \
    opensurge \
    pairs.x86_64 \
    palapeli.x86_64 \
    plee-the-bear.x86_64 \
    puzzle-master.x86_64 \
    quadrapassel.x86_64 \
    seahorse-adventures \
    supertux.x86_64 supertuxkart.x86_64 \
    swell-foop.x86_64 \
    tuxtype2.x86_64


flatpak install \
    flathub com.github.k4zmu2a.spacecadetpinball \
    org.sonic3air.Sonic3AIR \
    org.srb2.SRB2 \
    org.srb2.SRB2Kart \
    com.endlessnetwork.frogsquash \
    org.gottcode.CuteMaze
```



# Graphics

```bash
sudo dnf install \
    gimp gimp-*.x86_64 \
    mtpaint.x86_64

flatpak install \
    org.darktable.Darktable
    com.github.maoschanz.drawing \
    org.gnome.gThumb \
    com.jgraph.drawio.desktop
```



# Internet
NA



# Multimedia
NA


# Office
NA



# Science and Engineering
NA



# System Settings
NA



# Application Addons

## Plasma Addons

## Settings

## KWin Scripts (Discover)
- Ultrawide Windows or, maybe, Mudeer
