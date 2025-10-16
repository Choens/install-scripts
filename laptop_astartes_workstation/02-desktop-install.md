# About
- Desktop applications I usually install.
- Where possible/practical, I install flatpaks.
    - However, some apps work better when installed via rpm.
- All installed flatpaks are from Flathub.

# Dark Theme

I like my themes dark, like me:

```bash
flatpak install org.gtk.Gtk3theme.Adwaita-dark
```

If you install Flatpak apps while in light mode and then later try to move to dark, it doesn't work. Sigh.

# Audio & Video

TODO: Figure out what is hot right now.

- Lollypop: Play & organize your music collection.
    - Available via the Fedora remote.
- Pipeline: Follow video creators
- Shortwave: Listen to internet radio.
- Showtime: Watch without distractions.

```bash
# Audio
flatpak install flathub --assumeyes \
    de.haeckerfelix.Shortwave \
    org.gnome.Lollypop

# Video
flatpak install flathub --assumeyes \
    de.schmidhuberj.tubefeeder \
    org.gnome.Showtime
```

- Flowblade: Video editor

```bash
flatpak install -y \
    io.github.jliljebl.Flowblade \
    org.openshot.OpenShot
```

# Development & Data Science Tools

## Flatpaks

- Data:
    - Arx: Data anonymization tool.
    - Jasp: Classical and Bayesian Statistics.
    - PSPP: GNU PSPP is a program for statistical analysis of sampled data.
    - Restfox: A powerful minimalistic HTTP client.
    - Graphs: Plot and manipiulate data.
- Database:
  - DBeaver: Universal Database Manager
- Distrobox: Only useful if you are going to use distrobox.
  - BoxBuddy: A Graphical Distrobox Manage
  - DistroShelf: Graphical interface for managing Distrobox containers
- Editors:
    - Gedit: Text editor for the GNOME desktop.
    - JupyterLab: You know what this is!
    - Meld: Diff tool
        - Available via the Fedora remote.
    - Dr Racket: The Language-Oriented Programming Language
    - Zed: High-performance code editor
- Git:
    - GitHub Desktop: Simple collaboration from your desktop
    - Gitnuro: Multiplatform Git client.
    - Stage: Git GUI Client instpired by Magit.
    - Turtle: Manage your git repositories
- Other:
    - Cartero: Make HTTP requests and test APIs.
    - Citations: A bibliography management tool.
    - Cockpit client: A client for Fedora cockpit.
	- Code Sparks: Notification tool for GitHub, GitLab, etc.
    - Devpod: Codespaces but open-source.
    - Obfuscate: Obfuscate screenshots, etc. 
    - Pods: Gnome-style container manager.
    - Ptyxis: Container-oriented terminal.

TODO Reduce number of SQL editors installed. (do I really need these?)
TODO Reduce the number of editors installed (do I really need these?)
TODO Reduce the number of git clients installed (do I really need these?)

```bash
# ---- Data ----
# Listed independently for flexibility.

flatpak install flathub --assumeyes \
    org.deidentifier.arx

flatpak install flathub se.sjoerd.Graphs

flatpak install flathub --assumeyes \
    dev.restfox.Restfox 

flatpak install flathub --assumeyes \
    org.gnu.pspp
    
flatpak install flathub --assumeyes \
    org.jaspstats.JASP

flatpak install flathub se.sjoerd.Graphs

# ---- Database ----
flatpak install flathub --assumeyes \
    io.dbeaver.DBeaverCommunity \
    io.dbeaver.DBeaverCommunity.Client.pgsql 

# ---- Distrobox ----
flatpak install --assumeyes \
    com.ranfdev.DistroShelf \
    io.github.dvlv.boxbuddyrs

# ---- Editors ----
sudo dnf install --assumeyes gedit gedit-plugins

flatpak install flathub --assumeyes \
    dev.zed.Zed \
    org.gnome.meld \
    org.gnome.World.Citations \
    org.jupyter.JupyterLab

flatpak install flathub --assumeyes \
    org.racket_lang.Racket

# ---- Git ----
flatpak install flathub --assumeyes \
    com.jetpackduba.Gitnuro \
    io.github.shiftey.Desktop \
    io.github.aganzha.Stage \
    de.philippun1.turtle

# ---- Other ----
flatpak install flathub --assumeyes \
    app.devsuite.Ptyxis \
    com.belmoussaoui.Obfuscate \
    com.github.marhkb.Pods \
	com.mardojai.ForgeSparks \
    es.danirod.Cartero \
    io.podman_desktop.PodmanDesktop \
    org.cockpit_project.CockpitClient \
    sh.loft.devpod
    
```

# Games

- Gnome:
  - Chess: Play some chess, on GNOME!
      - Available via the Fedora remote.
  - Mahjongg:
      - Available via the Fedora remote.
  - Quadrapassel: What it says, for GNOME.
      - Available via the Fedora remote.
  - Reversi:
      - Available via the Fedora remote.
- KDE:
  - Naval Battle: Battle Ship Game
  - Konquest: Galactic Strategy Game
  - KSirK: World Domination Strategy Game

```bash
# Gnome:
flatpak install flathub --assumeyes \
    org.gnome.Chess

# KDE:
#flatpak install flathub --assumeyes \
#    org.kde.knavalbattle \
#    org.kde.konquest \
#    org.kde.ksirk
```

# Graphics & Photography

- Color Picker/Palette
    - Eyedropper: Pick colors.
    - Palette: Gnome palette
- Graphic/Photo Editing
    - Darktable: A really great RAW photo editing tool.
    - GIMP: Terrible name. Great graphics editor.
        - Available via the Fedora remote.
        - But the extensions are not.
    - gThumb: A nice way to manage pictures/photos.
        - Available via the Fedora remote.
- Video/Audio Recording
    - OBS
    - WebCamControl: Control webcam pan/tilt/zoom settings and more.

```bash
# ---- Color Picker/Palette ----
flatpak install flathub --assumeyes \
    com.github.finefindus.eyedropper \
    org.gnome.design.Palette

# ---- Graphic/Photo Editing ----
flatpak install flathub --assumeyes \
    org.gimp.GIMP \
    org.gimp.GIMP.Plugin.Resynthesizer \
    org.gimp.GIMP.Plugin.BIMP \
    org.gimp.GIMP.Plugin.GMic \
    org.gimp.GIMP.Plugin.FocusBlur \

flatpak install flathub --assumeyes \
    org.gnome.gThumb

flatpak install org.darktable.Darktable

# ---- Video/Audio Recording ----
flatpak install flathub --assumeyes \
    com.daniel15.wcc \
    org.pulseaudio.pavucontrol

flatpak install flathub be.alexandervanhee.gradia

flatpak install flathub com.github.maoschanz.drawing

flatpak install flathub --assumeyes \
    com.obsproject.Studio \
    com.obsproject.Studio.Plugin.BackgroundRemoval \
    com.obsproject.Studio.Plugin.DroidCam \
    com.obsproject.Studio.Plugin.GStreamerVaapi \
    com.obsproject.Studio.Plugin.InputOverlay \
    com.obsproject.Studio.Plugin.MoveTransition   

flatpak install flathub --assumeyes \
    io.github.seadve.Kooha
```

# Networking & Internet

Browse:

- Mainstream Browsers
  - Chrome: I use it to interact with Google products and for some PWAs.
  - Edge: I use this for accessing online resources for school.
  - Firefox: That Mozilla browser.
    - Available via the Fedora remote.
- Alternative Browsers:
  - Epiphany: A web-browser for GNOME.
    - Available via the Fedora remote.
  - Nyxt: The hacker's browser.
- Remote Desktop Client:
  - Remmina: A remote desktop/ssh client tool (RDP, VNC, SSH, etc.).
    - Available via the Fedora remote.

```bash
# Someday!
# flatpak install flathub --assumeyes \
#     org.mozilla.firefox

flatpak install flathub --assumeyes \
    dev.qwery.AddWater

# Other mainstream and useful browsers:
flatpak install flathub --assumeyes \
    com.google.Chrome \
    com.microsoft.Edge

# Alternative browsers:
flatpak install flathub --assumeyes \
    org.gnome.Epiphany \
    engineer.atlas.Nyxt

# File Sharing
flatpak install flathub --assumeyes \
    app.drey.Warp

# Remote desktop client:
flatpak install flathub --assumeyes org.remmina.Remmina
```

Communicate:

I don't think I need to introduce/explain these two:

- Flare: Chat with your friends on Signal.
- Signal: Private messenger
- Slack: Business Communication
- Zoom:

```bash
# I don't really use Slack these days and the Zoom client doesn't seem to "do" SSO.
# flatpak install flathub --assumeyes
#     us.zoom.Zoom

flatpak install flathub --assumeyes
    com.slack.Slack

flatpak install flathub de.schmidhuberj.Flare

flatpak install flathub org.signal.Signal
```

To install Zoom, go to: https://www.zoom.us/download and download the RPM file and install with:

```bash
sudo dnf install libXScrnSaver

sudo dnf install ~/Downloads/zoom_x86_64.rpm
```

# Office & Productivity

- Bitwarden: Password manager.
- Geary: GNOME email client.
    - Available via the Fedora remote.
- NormCap: Capture text from any screen area.
- OnlyOffice: Office productivity suite.
- PKM
    - AnyType: The everything app for those who celebrate trust and autonomy
    - Appflowy: Open Source Notion Alternative
    - Logsq:
    - Siyuan: Privacy-first personal knowledge management system

```bash
flatpak install flathub --assumeyes \
    com.bitwarden.desktop \
    com.github.dynobo.normcap \
    org.gnome.Geary \
    org.onlyoffice.desktopeditors

# ---- PKM ----
flatpak install flathub --assumeyes \
    com.logseq.Logseq \
    io.anytype.anytype \
    io.appflowy.AppFlowy \
    org.b3log.siyuan
```

# System & Utilities

## dnf

- gpaste: Clipboard management system
    - Also installs the gnome-shell extension.

```bash
sudo dnf install --assumeyes \
    gnome-shell-extension-gpaste \
    gpaste gpaste-ui
```

## Flatpaks

- Cuneo: Widget-like Calculator and Conversion tool
- Dconf Editor: A graphical tool for editing the dconf database
    - Available via the Fedora remote.
- Extension Manager: Browse, install, and manage GNOME Shell Extensions
- Flatseal: Manage flatpak permissions
    - Available via the Fedora remote.
- Junction: Application chooser
- Main Menu: Customize the menu
- Network Displays: Screencasting for gnome
- Pika Backup: Keep your data safe
- Resources: Keep an eye on system resources
- Trayscale:  Unofficial GUI for Tailscale

```bash
flatpak install flathub --assumeyes \
    ca.desrt.dconf-editor \
    com.mattjakeman.ExtensionManager \
    com.github.tchx84.Flatseal \
    dev.deedles.Trayscale \
    io.github.flattool.Warehouse \
    io.github.heidefinnischen.cuneo \
    io.missioncenter.MissionCenter \
    net.nokyan.Resources \
    org.gnome.NetworkDisplays \
    org.gnome.World.PikaBackup \
    page.codeberg.libre_menu_editor.LibreMenuEditor \
    re.sonny.Junction
```

