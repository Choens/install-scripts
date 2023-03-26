# First Boot

- Upgrades the system and adds the multimedia stuff.
- Installs Cockpit (remote management), git, and xclip whichmakes it easier to setup the system.

```bash
sudo dnf group upgrade --with-optional Multimedia

# Enable remote management (but don't start the webserver)
sudo dnf install cockpit git xclip
```

## SDDM

Confirm you are using SDDM WAYLAND! You probably aren't.

```bash
sudo dnf install sddm-wayland-plasma

# If ↑ tells you there is nothing to do, you are done.
# But if it returns an error:
sudo dnf swap sddm-x11 sdd-wayland

# Yeah yeah yeah. This is KDE install. But having a fall back is nice.
# And sometimes things just work a little better with some of this installed.
# And it takes less room than LaTeX does . . . . 
sudo dnf group install "Fedora Workstation"
```

## Software Setup

Enables you to install flatpaks from Flathub!

- Open Discover.
    - Enable Flathub:
        - Hit the button to add flathub and promote it above the fedora repo.



# Accessories

RPM:
- Fonts: Life is too short for meh fonts
- NetworkManager-tui: What it says a TUI for NM
- adwaita-qt: Make sure we can make QT look like Adwaita
- ark: Archive (zip, rar, 7zip) handler for KDE
- gnome-themes-extra: Make sure we can make electron/gtk apps dark (Adwaita Dark)
- htop: TUI for running processes
- hwinfo: TUI for hardware information
- kalarm: Set/use alarms
- kbackup: KDE tool for backing up your system
- kcron: Run things automagically
- krusader: Powerful dual pane file manager
- kgpg: Encryption tool
- pwgen: TUI password generation tool
- skanlite, skanpage: Skanning tools

```bash
sudo dnf install \
     adobe-source-sans-pro-fonts \
     adobe-source-serif-pro-fonts \
     cascadia-code-fonts \
     fira-code-fonts \
     ibm-plex*

sudo dnf install \
    NetworkManager-tui \
    adwaita-qt*x86_64 \
    ark \
    gnome-themes-extra \
    htop \
    hwinfo \
    kalarm \
    kbackup \
    kcron \
    krusader \
    kgpg \
    lightly \
    pwgen \
    ranger \
    skanlite skanpage
```

Flatpaks:
- Bitwarden: Manage your gnarly passwords
- Filelight: Disk usage, pretty
- Keysmith: Two-factor code generator
- Kleopatra: Certificate manager, unified cryptio

```bash
# The first flatpak installation is SLOW.
# After that, it gets much faster.
flatpak install \
    com.bitwarden.desktop \
    org.kde.filelight \
    org.kde.keysmith \
    org.kde.kleopatra \
    org.kde.kweather
```



# Developer Tools

Search terms:
- console
- data
- git
- spreadsheet
- sql
- terminal

RPM:
- fish: The Fish shell
- kompare: Diff tool
- ksshaskpass: Allows you to hold onto ssh-agent stuff.

```bash
sudo dnf install \
    fish \
    kate \
    kompare \
    ksshaskpass
```

https://serverfault.com/questions/254508/using-ssh-agent-with-kde
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

Flatpak:
- Beekeeper Studio: A modern style SQL client
- Cockpit client: A client for Fedora cockpit
- DBeaver: A terrific SQL client
- Git Cola: Caffeinated git client

```bash
# This one takes a couple of minutes . . . .
flatpak install \
    com.github.git_cola.git-cola \
    io.beekeeperstudio.Studio
    io.dbeaver.DBeaverCommunity \
    org.cockpit_project.CockpitClient
```



# Education
NA



leocad
kgeography
geogebra
kolibri
colobot
marble
kturtle
duolingo - maybe pwa

anki



# Games
- Kblocks: Falling blocks
- Kigo: Play go!
- Knights: Chess
- Kreversi: Reversi

```bash
flatpak install \
    org.kde.kblocks \
    org.kde.kigo \
    org.kde.knights \
    org.kde.kreversi
```



# Graphics

Flatpak:
- DrawIO: Drawio, in a wrapper
- Darktable: A really great RAW photo editing tool
- Kcolorchooser: Color selector and palette editor

```bash
flatpak install com.jgraph.drawio.desktop org.kde.kcolorchooser

flatpak install org.darktable.Darktable
```

TODO: Look at graphics more carefull.



# Internet

Flatpak:
- Falkon: A web-browser for KDE
- Chrome: Google's internet browser
- Edge: Microsoft's internet browser
- Kget: Get stuff downloaded
- Remmina: A terrific remote client tool (RDP, VNC, etc.)
    - I only install this if I need it
- Wavebox: An all-in-one browser I used at Acuitas
   - I don't install this often anymore

```bash
flatpak install \
    com.google.Chrome \
    com.microsoft.Edge \
    org.kde.falkon \
    org.kde.kget

flatpak install org.remmina.Remmina

flatpak install io.wavebox.Wavebox
```



# Multimedia

RPM:
- plasmatube: Youtube Video player

```bash
sudo dnf install plasmatube
````

Flatpak:
- AudioTube: Convergent Youtube client
- Haruna: Media player
- KDEnlive: Video editor
- OBS Studio: Desktop recording extrodinaire

```bash
flatpak install \
    com.obsproject.Studio \
    org.kde.audiotube \
    org.kde.haruna \
    org.kde.kdenlive
```



# Office
- Slack: You know what this is
- Thunderbird: The email to Mozilla's Firefox browser
- Zoom: Whatever could this be?

```bash
flatpak install \
    com.slack.Slack \
    org.mozilla.Thunderbird \
    org.onlyoffice.desktopeditors  \
    us.zoom.Zoom
```



# Science & Engineering
RPM:
- Cantor: Jupyter like development environment.

```bash
sudo dnf install cantor cantor-R cantor-julia pspp
```

Flatpak:
- Kbibtex: Manage bibtex
- Labplot: Plot data

```bash
flatpak install \
    org.jamovi.jamovi \
    org.jaspstats.JASP \
    org.kde.kbibtex \
    org.kde.labplot2
```



# System Settings

RPM:
- sweeper: Clean unwanted traces on the system
- Yakuake: Your dropdown terminal dujour

```bash
sudo dnf install sweeper yakuake
```
Flatpak:
- Contour Terminal Emulator: modern and actually fast, modal, virtual terminal emulator, for everyday use

```bash
flatpak install org.contourterminal.Contour
```