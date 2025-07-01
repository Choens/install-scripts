# About

- Desktop/GUI applications I usually install.
- Where possible, I install flatpaks. However, some apps work better when installed via rpm.
- All installed flatpaks are from Flathub.



# Dark Theme

I like my themes dark, like me:

```bash
flatpak install org.gtk.Gtk3theme.Adwaita-dark org.gtk.Gtk3theme.Breeze
```



# Audio & Video

Players:

- FreeTube: An Open Source YouTube app for privacy 
- Haruna: Media player

```bash
flatpak install flathub --assumeyes \
    io.freetubeapp.FreeTube  \
    org.kde.haruna
```


Editors/Recorders:

- KDenlive: Video editor
- KRecorder: Audio recorder
    - This doesn't exist on FlatHub and I don't think its worth installing all of KDE over again,
    - So I install it from Fedora directly.
- KWave: Sound editor
- OpenShot: An easy to use, quick to learn, and surprisingly powerful video editor


```bash
sudo dnf install krecorder

flatpak install flathub --assumeyes  \
    org.kde.kdenlive \
    org.kde.kwave \
    org.openshot.OpenShot
```



# Development & Data Science Tools

## Flatpaks

- Data:
    - Arx: Data anonymization tool
    - Fielding: Test your REST APIs.
    - Restfox: A powerful minimalistic HTTP client
    - QGIS: A Free and Open Source Geographic Information System
- Database:
    - BeeKeeper: SQL editor & database manager of your dreams
    - DBeaver: Universal Database Manager
    - DbGate: (no)SQL database client
- Git:
    - Git Fourchette: The comfortable git ui
    - GitHub Desktop: Simple collaboration from your desktop
    - Gitnuro: Multiplatform Git client.
    - Kommit: Git GUI client
- Other
    - JupyterLab: Jupyter desktop application
    - KAlgebra: Graph Calculator
    - KBibTeX: BibTeX editor by KDE to edit bibliographies used with LaTeX
    - Kdiff3: A file and folder comparison and merge tool
    - kompare: Diff/Patch Frontend
    - Kontainer: Manage Distrobox containers 

- TODO: Decide on Git Tools
- TODO: Evaluate LabPlot/Cantor
- TODO: Evaluate Database tools
    
```bash

flatpak install flathub --assumeyes \
    com.jetpackduba.Gitnuro \
    dev.restfox.Restfox \
    io.beekeeperstudio.Studio \
    io.dbeaver.DBeaverCommunity \
    io.dbeaver.DBeaverCommunity.Client.pgsql \
    io.dbeaver.DBeaverCommunity.Client.mariadb \
    io.github.DenysMb.Kontainer \
    io.github.shiftey.Desktop \
    io.podman_desktop.PodmanDesktop \
    org.dbgate.DbGate \
    org.deidentifier.arx \
    org.gitfourchette.gitfourchette \
    org.jupyter.JupyterLab \
    org.kde.fielding \
    org.kde.kalgebra \
    org.kde.kdiff3 \
    org.kde.kommit \
    org.kde.kompare \
    org.qgis.qgis
```

# Education

- KTouch: Touch typing tutor
- Marble: Virtual globe

```bash
flatpak install flathub --assumeyes \
    org.kde.ktouch \
    org.kde.marble
```


# Games

- Kigo: Go board game
- Knights: Chess game
- Konquest: Galactic strategy game
- KsirK: World domination strategy game

```bash
flatpak install flathub --assumeyes \
    org.kde.kigo \
    org.kde.knights \
    org.kde.konquest \
    org.kde.ksirk
```



# Graphics & Photography:

- Gwenview: An image viewer
    - Not sure why this isn't part of @kde-desktop.
- KColorChooser: Color selector and palette editor
- Krita: Digital painting, creative freedom
- OBS Studio: Live stream and record videos

```bash
# Utils
sudo dnf intall --assumeyes gwenview

flatpak install flathub --assumeyes \
    org.kde.kcolorchooser

# Painting
flatpak install flathub --assumeyes \
    org.kde.krita

# Desktop recording.
flatpak install flathub --assumeyes \
    com.obsproject.Studio \
    com.obsproject.Studio.Plugin.BackgroundRemoval \
    com.obsproject.Studio.Plugin.DroidCam \
    com.obsproject.Studio.Plugin.GStreamerVaapi \
    com.obsproject.Studio.Plugin.InputOverlay \
    com.obsproject.Studio.Plugin.MoveTransition   
```



# Networking & Internet

Browse:

- Mainstream Browsers
  - Chrome: I use it to interact with Google products and for some PWAs.
  - Edge: I use this for accessing online resources for school.
  - Firefox: That Moz   illa browser.
    - Available via the Fedora remote.
- Alternative Browsers:
  - Falkon: Web browser.
- Remote Desktop Client:
  - KRDC: Connect with RDP or VNC to another computer.

  TODO: syncthing (dnf)

```bash
# Some day!
# flatpak install flathub --assumeyes \
#     org.mozilla.firefox

# Other mainstream and useful browsers:
flatpak install flathub --assumeyes \
    com.google.Chrome \
    com.microsoft.Edge


# Alternative browsers:
flatpak install flathub --assumeyes \
    org.kde.falkon

# File Sharing
flatpak install flathub --assumeyes \
    XXX

# Remote desktop client:
flatpak install flathub --assumeyes org.kde.krdc
```

Communicate:

I don't think I need to introduce/explain these two:

- Slack
- Zoom

```bash
# I don't really use Slack these days and the Zoom client doesn't seem to "do" SSO.
# flatpak install flathub --assumeyes
#     com.slack.Slack \
#     us.zoom.Zoom

```

To install Zoom, go to: https://www.zoom.us/download and download the RPM file and install with:

```bash
sudo dnf install ~/Downloads/zoom_x86_64.rpm
```



# Office & Productivity

- Bitwarden: A secure and free password manager for all of your devices
- Ghostwriter: A distraction-free text editor for Markdown
- Logseq: Connect your notes and knowledge
- KBibTeX: BebTeX edtor by KDE to edit bibliographies used with LaTeX
- Okular: A document viewer
- Thunderbird: A free and open source email, newsfeed, chat, and calendaring client.

```bash
sudo dnf install okular

flatpak install flathub --assumeyes\
    com.bitwarden.desktop \
    com.logseq.Logseq \
    org.kde.ghostwriter \
    org.kde.kbibtex \
    org.mozilla.Thunderbird
    
sudo dnf install -y \
    kamoso \
    skanlite \
    skanpage
```



# System & Utilities

- Back in Time: Back up your things.
- Countour: A modern and actually fast, modal, virtual terminal emulator, for everyday use
- Kalm: Bereathing techniques
- KJournald: Browser for journald databases
- KTailctl: Manage and monitor Tailscale
- KWeather: A convergent weather application for Plasma
- Lightkeeper: Manage remote systems
- Qalculate: Powerful and easy to use calculator
- Sweeper: Clean unwanted traces the user leaves on the system
- Yakuake: Drop-down terminal


```bash
sudo dnf install backintime-qt kjournald sweeper

flatpak install flathub --assumeyes \
    io.github.kalaksi.Lightkeeper \
    io.github.Qalculate.qalculate-qt \
    org.fkoehler.KTailctl \
    org.kde.kalm \
    org.kde.kweather \
    org.kde.yakuake
```

