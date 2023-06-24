# First Boot

- Upgrades the system and adds the multimedia stuff.
- Installs Cockpit (remote management), git, and xclip whichmakes it easier to setup the system.

```bash
sudo dnf group upgrade --with-optional Multimedia

# Enable remote management (but don't start the webserver)
sudo dnf install cockpit git xclip
```

## Software Setup

Enables you to install flatpaks from Flathub!

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
    dconf-editor \
    gnome-dictionary \
    gnome-console \
    gnome-shell-extension-appindicator.noarch \
    gnome-shell-extension-caffeine \
    gnome-shell-extension-dash-to-dock \
    gnome-shell-extension-gamemode.noarch \
    gnome-shell-extension-just-perfection \
    gnome-shell-extension-native-window-placement \
    gnome-tweaks \
    gnome-usage \
    htop \
    hwinfo \
    neofetch \
    pwgen \
    ranger \
    solaar \
    xdg-desktop-portal-gnome
```

Flatpaks:
- Bitwarden: Manage passwords.
- Extension Manager: The GNOME extension manager.
- Flatseal: Manage permissions for flatpaks.
- Pika Backup: Backup tool

```bash
# This is the first flatpaks installed; it will take a minute.
flatpak install \
    com.bitwarden.desktop \
    com.mattjakeman.ExtensionManager \
    com.github.tchx84.Flatseal \
    com.github.GradienceTeam.Gradience \
    org.gnome.World.PikaBackup
```

From within GNOME Extension Manager, I install:

- GNOME Clipboard or Clipboard History
- Just Perfection
- Material You Color Theming
- Tactile



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
    rabbitvcs-cli.noarch rabbitvcs-nautilus \
    tilix tilix-nautilus
```

Flatpak:
- Cockpit client: A client for Fedora cockpit.
- DBeaver: The best SQL client
- Emulsion: Store color palettes.
  - Removed because it was  not kept up to date.
- Gaphor: UML modeling
- Insomnia: Test those APIs.
- Obfuscate: Obfuscate screenshots, etc.
- Palette: Don't forget your colors.
- Pick: Color picker
  - Removed because it was  not kept up to date.
- Solanum: Tick tock
  - Removed because it was  not kept up to date.

```bash
# This one takes a couple of minutes . . . .
flatpak install flathub\
    com.belmoussaoui.Obfuscate \
    io.dbeaver.DBeaverCommunity \
    me.iepure.devtoolbox \
    org.cockpit_project.CockpitClient \
    org.gaphor.Gaphor 
```



# Education
NA


# Games

- Chess: Play some chess, on GNOME!
- Iagno: Reversi game for GNOME.
  - removed because the runtime is OLD
- Quadrapassel: What it says, for GNOME.

```bash
## TODO: Check flatpak options
flatpak install \
    org.gnome.Chess \
    org.gnome.Mahjongg \
    org.gnome.Quadrapassel
```



# Graphics

- DrawIO: Drawio, in a wrapper.
- Drawing: Drawing, on GNOME.
- gThumb: A nice way to manage pictures/photos.
- Darktable: A really great RAW photo editing tool. Only install it if you need to do this kind of work.

```bash
flatpak install \
    com.jgraph.drawio.desktop \
    org.gnome.gThumb

flatpak install org.darktable.Darktable
```



# Internet

- Epiphany: A web-browser for GNOME.
- Remmina: A terrific remote client tool (RDP, VNC, etc.).

```bash
# TODO: Check flatpak sources
sudo dnf install epiphany
sudo dnf install \
    remmina remmina-gnome-session \
    remmina-plugins-exec \
    remmina-plugins-python \
    remmina-plugins-rdp \
    remmina-plugins-secret \
    remmina-plugins-www

flatpak install re.sonny.Tangram
```

If I'm going to use Wavebox on the system:

```bash
flatpak install io.wavebox.Wavebox
```


# Multimedia

- gstreamer: Want your multimedia?
- Clapper: Simple, modern GNOME media player.
- Lollypop: Play & organize your music collection.
- PsTube: Youtube client made with flutter.
- Shortwave: Listen to internet radio.

```bash
sudo dnf install gstreamer1-plugins-bad-free

flatpak install \
    com.github.rafostar.Clapper \
    io.github.prateekmedia.pstube \
    org.gnome.Lollypop \
    de.haeckerfelix.Shortwave
```



# Office

- Geary: GNOME email client.
- Evolution: Enterprise GNOME email client

I don't use both on a single system. If/when I need to access Exchange servers,
I use Evolution because Geary's support is nil for this use-case.

```bash
# TODO: Check flatpak source
sudo dnf install geary

sudo dnf install evolution evolution-ews
```

- Slack: You know what this is.
- Zoom: Whatever could this be?

```bash
flatpak install com.slack.Slack
flatpak install us.zoom.Zoom
```


