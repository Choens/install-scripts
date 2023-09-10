# First Boot

- Upgrades the system and adds the multimedia stuff.
- Installs Cockpit (remote management), git, and xclip whichmakes it easier to setup the system.

```bash
sudo dnf group upgrade --with-optional Multimedia

# Enable remote management (but don't start the webserver)
sudo dnf install cockpit git xclip
```

## Software Setup

Enables you to install flatpaks from Flathub! Not needed on Fedora 38 or later.

- Open GNOME software.
    - Disable Pycharm. Because, meh.
    - Disable the NVIDIA driver repo unless you have a system that has an NVIDIA card.
    - Disable the Steam repo unless you want steam



# Accessories

RPM:
- Gnome Console: A nice terminal emulator
- GNOME Shell Extensions Some GNOME shell extensions I sometimes use.
- GNOME Tweaks: Settings they haven't found a "good" home for
- GNOME Usage: Assess disk drive usage.
- Solaar: Generic Logitech tool

```bash
sudo dnf install \
    f37-backgrounds-extras-gnome \
    f38-backgrounds-extras-gnome \
    gnome-console \
    gnome-shell-extension-appindicator \
    gnome-shell-extension-blur-my-shell \
    gnome-shell-extension-caffeine \
    gnome-shell-extension-dash-to-dock \
    gnome-shell-extension-gamemode.noarch \
    gnome-shell-extension-just-perfection \
    gnome-shell-extension-native-window-placement \
    gnome-tweaks \
    gnome-usage \
    solaar

# I don't know why they don't install the better extension manager by default.
sudo dnf autoremove gnome-extensions-app
```

Flatpaks:
- Bitwarden: Manage passwords.
- Extension Manager: The GNOME extension manager.
- Flatseal: Manage permissions for flatpaks.
- Gnome Pika Backup: Backup tool

```bash
# This is the first flatpaks installed; it will take a minute.
flatpak install -y\
    com.bitwarden.desktop \
    com.mattjakeman.ExtensionManager \
    com.github.tchx84.Flatseal \
    com.github.GradienceTeam.Gradience \
    org.gnome.World.PikaBackup
```

From within GNOME Extension Manager, I install:

- GNOME Clipboard or Clipboard History
- Material You Color Theming
- Tactile






# Education
NA



# Games

- Chess: Play some chess, on GNOME!
- Iagno: Reversi game for GNOME.
  - removed because the runtime is OLD
- Quadrapassel: What it says, for GNOME.

```bash
flatpak install -y flathub\
    org.gnome.Chess \
    org.gnome.Mahjongg \
    org.gnome.Quadrapassel
```



# Graphics

- DrawIO: Drawio, in a wrapper.
- gThumb: A nice way to manage pictures/photos.
- Darktable: A really great RAW photo editing tool. Only install it if you need to do this kind of work.

```bash
flatpak install -y\
    com.jgraph.drawio.desktop \
    org.gnome.gThumb

flatpak install org.darktable.Darktable
```



# Internet

- Epiphany: A web-browser for GNOME.
- Remmina: A terrific remote client tool (RDP, VNC, etc.).
- Tangram: An interesting Wavebox like tool.

```bash
# TODO: Check flatpak sources
sudo dnf install epiphany

flatpak install -y com.google.Chrome com.microsoft.Edge

flatpal install -y org.remmina.Remmina

flatpak install -y re.sonny.Tangram
```



# Multimedia

- gstreamer: Want your multimedia?
- Clapper: Simple, modern GNOME media player.
- Lollypop: Play & organize your music collection.
- PsTube: Youtube client made with flutter.
- Shortwave: Listen to internet radio.

```bash
sudo dnf install gstreamer1-plugins-bad-free

flatpak install -y flathub org.gnome.Lollypop

# These are great apps, but I rarely actually _use_ them.
flatpak install -y\
    com.github.rafostar.Clapper \
    io.github.prateekmedia.pstube \
    de.haeckerfelix.Shortwave
```



# Office

- Geary: GNOME email client.
- Evolution: Enterprise GNOME email client

I don't use both on a single system. If/when I need to access Exchange servers,
I use Evolution because Geary's support is nil for this use-case.

```bash
sudo dnf install geary

sudo dnf install evolution evolution-ews
```

- Slack: You know what this is.
- Zoom: Whatever could this be?

```bash
flatpak install com.slack.Slack
flatpak install -y us.zoom.Zoom
```
