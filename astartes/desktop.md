# About

Desktop install script for astartes, which is usually the name I give to my primary personal laptop. This system spends most of its time plugged in, but I do use it for teaching, programming in the living room, etc. This is the only system I tend to simply administer directly and it is not connected to cockpit. This is partially a security measure because this laptop leaves the house fairly frequently.

- Operating System: Fedora Workstation
- Desktop: GNOME
- Goal: Personal work, teaching, data science, programming



# First Boot

```bash
sudo dnf group upgrade --with-optional Multimedia

# Enable remote management (but don't start the webserver)
sudo dnf install cockpit
```

## Reltek

If you ave the . . . displeasure . . . of having a system with a Realtek wireless modem, open [realtek.md](./realtek.md) and 

## Software Setup

This is an important step. If you don't do it, you can't install flatpak packages.

- Open GNOME software.
    - Disable Pycharm. Because, meh.
    - Disable the NVIDIA driver repo unless you have a system that has an NVIDIA card.
- Enable Flathub:
    - `flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo`
    - Reference: https://developer.fedoraproject.org/deployment/flatpak/flatpak-usage.html
    - As a general rule, I tend to install from Flathub rather than the Fedora flatpacks because I don't want _that_ many copies of the base dependencies.


# Accessories

RPM:
- Fonts: Life is too short for meh fonts.
- Dconf Editor: Tool for searching/editng the dconf database
- Deja Dup: Backup tool
- File Roller: Why is this not installed automatically?
- GNOME Shell Extensions Some GNOME shell extensions I sometimes use.
- GNOME-Tweaks: Settings they haven't found a "good" home for
- GNOME-Usage: Assess disk drive usage.
- Solaar: Generic Logitech tool
- xdg-desktop-portal-GNOME: Makes it possible for GNOME apps to access local files, print, etc.

```bash
sudo dnf install \
     adobe-source-sans-pro-fonts \
     adobe-source-serif-pro-fonts \
     cascadia-code-fonts \
     fira-code-fonts \
     ibm-plex*

sudo dnf install \
    NetworkManager-tui \
    bpytop \
    dconf-editor \
    gnome-dictionary \
    deja-dup* \
    file-roller file-roller-nautilus \
    gnome-console \
    gnome-shell-extension-caffeine \
    gnome-shell-extension-dash-to-dock \
    gnome-shell-extension-just-perfection \
    gnome-shell-extension-native-window-placement \
    gnome-tweaks \
    gnome-usage \
    htop \
    hwinfo \
    p7zip p7zip-plugins \
    pwgen \
    ranger \
    solaar \
    xdg-desktop-portal-gnome
```

Flatpaks:
- Extension Manager: The GNOME extension manager.
- Flatseal: Manage permissions for flatpaks.

```bash
# This is the first flatpaks installed; it will take a minute.
flatpak install \
    com.mattjakeman.ExtensionManager \
    com.github.tchx84.Flatseal \
    com.github.GradienceTeam.Gradience
```

From within GNOME Extensions, I install:

- GNOME Clipboard or Clipboard History
- Tactile
- Just Perfection

Remember: If you are running a super-new major release of GNOME, it is likely that none of these will have been updated for that version of GNOME, yet.



# Developer Tools

RPM:
- fish: The Fish shell
- gitg: Git GUI for GNOME.
- meld: Diff tool
- rabbit: Integrates nautilus and Git
- tilix: GTK tiling terminal.

```bash
sudo dnf install \
    fish \
    gitg.x86_64 \
    meld \
    rabbitvcs-nautilus \
    tilix
```

Flatpak:
- Cockpit client: A client for Fedora cockpit.
- DBeaver: The best SQL client
- Emulsion: Store color palettes.
- Gaphor: UML modeling
- Insomnia: Test those APIs.
- Obfuscate: Obfuscate screenshots, etc.
- Palette: Don't forget your colors.
- Pick: Color picker
- Solanum: Tick tock
- Sequeler: Yet another SQL client.

```bash
# This one takes a couple of minutes . . . .
flatpak install \
    org.cockpit_project.CockpitClient \
    io.dbeaver.DBeaverCommunity \
    io.github.lainsce.Emulsion \
    org.gaphor.Gaphor \
    rest.insomnia.Insomnia \
    com.belmoussaoui.Obfuscate \
    org.gnome.design.Palette \
    org.kryogenix.Pick \
    org.gnome.Solanum \
    com.github.alecaddd.sequeler
```



# Education
NA


# Games

- GNOME Chess: Play some chess, on GNOME!
- Iagno: Reversi game for GNOME.
- Quadrapassel: What it says, for GNOME.

```bash
sudo dnf install \
    gnome-chess \
    iagno \
    quadrapassel
```



# Graphics

- DrawIO: Drawio, in a wrapper.
- Drawing: Drawing, on GNOME.
- gThumb: A nice way to manage pictures/photos.
- Darktable: A really great RAW photo editing tool. Only install it if you need to do this kind of work.

```bash
flatpak install \
    com.jgraph.drawio.desktop \
    com.github.maoschanz.drawing \
    org.gnome.gThumb

flatpak install org.darktable.Darktable
```



# Internet

- Epiphany: A web-browser for GNOME.
- Remmina: A terrific remote client tool (RDP, VNC, etc.).

```bash
sudo dnf install \
    epiphany \
    remmina remmina-gnome-session \
    remmina-plugins-exec \
    remmina-plugins-python \
    remmina-plugins-rdp \
    remmina-plugins-secret \
    remmina-plugins-www
```

If I'm going to use Wavebox on the system:

```bash
sudo rpm --import https://download.wavebox.app/static/wavebox_repo.key
sudo wget -P /etc/yum.repos.d/ https://download.wavebox.app/stable/linux/rpm/wavebox.repo
sudo dnf install Wavebox
```


# Multimedia

- Clapper: Simple, modern GNOME media player.
- Lollypop: Play & organize your music collection.
- PsTube: Youtube client made with flutter.
- Shortwave: Listen to internet radio.

```bash
flatpak install \
    com.github.rafostar.Clapper \
    io.github.prateekmedia.pstube \
    org.gnome.Lollypop \
    de.haeckerfelix.Shortwave
```



# Office

- Geary: GNOME email client.

```bash
sudo dnf install geary
```

- Bitwarden: Manage some gnarly passwords.
- Slack: You know what this is.
- Zoom: Whatever could this be?

```bash
flatpak install \
    com.bitwarden.desktop \
    com.slack.Slack \
    us.zoom.Zoom
    
flatpak install fr.free.Homebank                
```

