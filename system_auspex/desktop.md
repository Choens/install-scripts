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
    cmatrix \
    hwinfo \
    htop \
    p7zip p7zip-plugins \
    pwgen \
    ranger
```

While the above is running, make life a little more comfortable. Gnome is awesome, but it needs some TLC to really make it shine.

Open `Settings`:

- Device Name: auspex
- Appearance: Dark
- Multitasking:
    - Set `Application Switching` to `Include applications from the current workspace only`.
- Displays:
    - Set my desktop monitor to be the primary display.
- Mouse and Touchpad:
    - Mouse:
        - Don't change anything.
    - Touchpad:
        - Set `Natural Scrolling` to TRUE.
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

## Software Setup

- Open gnome software.
- Enable flathub:
    - `flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo`
    - Reference: https://developer.fedoraproject.org/deployment/flatpak/flatpak-usage.html
    - As a general rule, I tend to install from Flathub rather than the Fedora flatpacks because I don't want _that_ many copies of the base dependencies.



# Accessories

```bash
sudo dnf install \
    gnome-console \
    gnome-tweaks \
    gnome-shell-extension-dash-to-dock.noarch \
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
```bash
sudo dnf install \
    blinken.x86_64 \
    celestia \
    gcompris* \
    kanagram.x86_64 \
    kbruch.x86_64 \
    kgeography.x86_64 \
    kig.x86_64 \
    klavaro.x86_64 \
    kstars.x86_64 \
    ktouch.x86_64 \
    kturtle.x86_64 \
    kwordquiz.x86_64 \
    marble.x86_64 \
    minuet.x86_64 \
    stellarium.x86_64 \
    step.x86_64 \
    tuxtype2.x86_64

# Had to install all of these via Discover . . DKW
flatpak install \
    com.hack_computer.Clubhouse
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
    iagno \
    kapman.x86_64 \
    katomic.x86_64 \
    kbounce.x86_64 \
    kdiamond.x86_64 \
    khangman.x86_64 \
    kigo.x86_64 \
    klickety.x86_64 \
    klines.x86_64 \
    knavalbattle.x86_64 \
    kolf.x86_64 \
    konquest.x86_64 \
    ksirk.x86_64 \
    ksquares.x86_64 \
    ktuberling \
    kubrick.x86_64 \
    neverball-neverball.x86_64 \
    neverball-neverputt.x86_64 \
    palapeli.x86_64 \
    puzzle-master.x86_64 \
    quadrapassel.x86_64 \
    supertux.x86_64 supertuxkart.x86_64 \
    swell-foop.x86_64 \
    tuxtype2.x86_64


flatpak install \
    org.gottcode.CuteMaze
```



# Graphics

```bash
sudo dnf install \
    gimp gimp-*.x86_64 \
    mtpaint.x86_64

flatpak install \
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

