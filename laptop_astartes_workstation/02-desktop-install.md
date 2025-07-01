# About

- Desktop applications I usually install.
- Where possible, I install flatpaks. However, some apps work better when installed via rpm.
- All installed flatpaks are from Flathub.



# Dark Theme

I like my themes dark, like me:

```bash
flatpak install org.gtk.Gtk3theme.Adwaita-dark
```

If you install Flatpak apps while in light mode and then later try to move to dark, it doesn't work. Sigh.



# Audio & Video

TODO: Figure out what is hot right now.

- Celluloid: GTK4 Video Player.
- Lollypop: Play & organize your music collection.
    - Available via the Fedora remote.
- Shortwave: Listen to internet radio.

```bash
# Audio
flatpak install flathub --assumeyes \
    de.haeckerfelix.Shortwave \
    org.gnome.Lollypop

# Video
 flatpak install flathub --assumeyes \
     io.github.celluloid_player.Celluloid
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
    - Arx: Data anonymization tool
    - DBeaver: Universal Database Manager
    - QGis: A Free and Open Source Geographic Information System
- Editors:
    - JupyterLab: You know what this is!
    - Meld: Diff tool
        - Available via the Fedora remote.
    - Zed: High-performance code editor
- Git:
    - Gitg: Git GUI for GNOME.
- Other:
    - Citations: A bibliography management tool.
    - Cockpit client: A client for Fedora cockpit.
    - Obfuscate: Obfuscate screenshots, etc. 
    - Pods: Gnome-style container manager

```bash
# Data
flatpak install flathub --assumeyes \
    io.dbeaver.DBeaverCommunity \
    io.dbeaver.DBeaverCommunity.Client.pgsql \
    io.dbeaver.DBeaverCommunity.Client.mariadb

# These are interesting, but I haven't been using them.
flatpak install flathub --assumeyes \
    org.deidentifier.arx \
    it.fabiodistasio.AntaresSQL \
    org.dbgate.DbGate

# GUI Data Analytics Tools
flatpak install flathub --assumeyes \
    org.jaspstats.JASP \
 
# Editors
flatpak install flathub --assumeyes \
    dev.zed.Zed \
    org.gnome.meld \
    org.gnome.World.Citations \
    org.jupyter.JupyterLab \
    org.qgis.qgis

# Git
flatpak install flathub --assumeyes \
    io.github.shiftey.Desktop \
    org.gnome.gitg

# Other
flatpak install flathub --assumeyes \
    com.belmoussaoui.Obfuscate \
    com.github.marhkb.Pods\
    io.podman_desktop.PodmanDesktop \
    org.cockpit_project.CockpitClient
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
    org.gnome.Chess \
    org.gnome.Mahjongg \
    org.gnome.Quadrapassel \
    org.gnome.Reversi

# KDE:
flatpak install flathub --assumeyes \
    org.kde.knavalbattle \
    org.kde.konquest \
    org.kde.ksirk
```



# Graphics & Photography:

- Darktable: A really great RAW photo editing tool.
- Eyedropper: Pick colors.
- GIMP: Terrible name. Great graphics editor.
    - Available via the Fedora remote.
    - But the extensions are not.
- gThumb: A nice way to manage pictures/photos.
    - Available via the Fedora remote.

```bash
# I almost always install this.
flatpak install flathub --assumeyes \
    com.github.finefindus.eyedropper

# If I'm going to do any photo editing.
flatpak install flathub --assumeyes \
    org.gimp.GIMP \
    org.gimp.GIMP.Plugin.Resynthesizer \
    org.gimp.GIMP.Plugin.BIMP \
    org.gimp.GIMP.Plugin.GMic \
    org.gimp.GIMP.Plugin.FocusBlur \
    org.gnome.gThumb

# This is a great app which I rarely have time to use these days.
#flatpak install org.darktable.Darktable

# And this I need to record my classes.
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
#flatpak install flathub --assumeyes \
    app.drey.Warp

# Remote desktop client:
#flatpak install flathub --assumeyes org.remmina.Remmina
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
sudo dnf install libXScrnSaver

sudo dnf install ~/Downloads/zoom_x86_64.rpm
```



# Office & Productivity

- Bitwarden: Password manager
- Geary: GNOME email client.
    - Available via the Fedora remote.

```bash
flatpak install flathub --assumeyes\
    com.bitwarden.desktop \
    com.logseq.Logseq \
    org.gnome.Geary
```



# System & Utilities

## dnf

- gpaste: Clipboard management system
- ptyxis: A container oriented terminal for GNOME

```bash
sudo dnf install \
    gnome-shell-extension-gpaste \
    gpaste gpaste-ui \
    ptyxis 
```

## Flatpaks

- BoxBuddy: A Graphical Distrobox Manager
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
- Solaar: Linux manager for Logitech keyboards, mice, and trackpads.
- Trayscale:  Unofficial GUI for Tailscale

```bash
flatpak install flathub --assumeyes \
    ca.desrt.dconf-editor \
    com.mattjakeman.ExtensionManager \
    com.github.tchx84.Flatseal \
    dev.deedles.Trayscale \
    io.github.dvlv.boxbuddyrs \
    io.github.flattool.Warehouse \
    io.github.pwr_solaar.solaar \
    io.missioncenter.MissionCenter \
    net.nokyan.Resources \
    org.gnome.NetworkDisplays \
    org.gnome.World.PikaBackup \
    page.codeberg.libre_menu_editor.LibreMenuEditor \
    re.sonny.Junction
```

