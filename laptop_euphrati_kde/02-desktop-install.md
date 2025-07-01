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

- Audiotube: YouTube music app
- Haruna: Media player
- PlasmaTube: Watch YouTube videos

```bash
flatpak install flathub --assumeyes \
    org.kde.audiotube \
    org.kde.haruna \
    org.kde.plasmatube
```

- KDenlive: Video editor

```bash
flatpak install flathub --assumeyes  \
    org.kde.kdenlive
```



# Development & Data Science Tools

## Flatpaks

NA

## DNF

### Neovim

```bash
sudo dnf install --setopt=install_weak_deps=False -y \
    neovim neovim-qt\
    python3-neovim
```

### Other Tools

```bash
sudo dnf install -y conda nodejs pgcli pipx postgresql
pipx install uv

conda init --user --all
conda config --set auto_activate_base false
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

- Krita: Digital painting, creative freedom
- OBS Studio: Live stream and record videos

```bash
# Utils

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
  - Firefox: That Mozilla browser.
    - Available via the Fedora remote.

```bash
# Some day!
# flatpak install flathub --assumeyes \
#     org.mozilla.firefox

# Other mainstream and useful browsers:
flatpak install flathub --assumeyes \
    com.google.Chrome


# Alternative browsers:
flatpak install flathub --assumeyes \
    org.kde.falkon

# File Sharing
flatpak install flathub --assumeyes \
    XXX

```



# Office & Productivity

- MarkNote: Write down your thoughts

```bash
flatpak install flathub --assumeyes\
    org.kde.marknote
```



# System & Utilities

- Back in Time: Back up your things.
- Kalm: Bereathing techniques
- KWeather: A convergent weather application for Plasma


```bash
#sudo dnf install backintime-qt

flatpak install flathub --assumeyes \
    org.kde.kalm \
    org.kde.kweather
```

