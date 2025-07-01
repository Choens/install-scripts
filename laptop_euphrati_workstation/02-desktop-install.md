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

```bash
flatpak install -y \
    io.github.jliljebl.Flowblade
```



# Development & Data Science Tools

## Neovim

```bash
sudo dnf install --setopt=install_weak_deps=False -y \
    neovim neovim-qt\
    python3-neovim
```


# Education

- TODO: Documentation

```bash
# Endless OS 
flatpak install flathub --assumeyes \
    com.endlessnetwork.MidnightmareTeddy \
    com.endlessnetwork.aqueducts \
    com.endlessnetwork.dragonsapprentice \
    com.endlessnetwork.fablemaker \
    com.endlessnetwork.frogsquash \
    com.endlessnetwork.missilemath \
    com.endlessnetwork.passage \
    com.endlessnetwork.tankwarriors \
    com.endlessnetwork.whitehouse \
    org.endlessos.Key

# Gnome
flatpak install flathub --assumeyes \
    org.gnome.Crosswords \
    org.gnome.gbrainy

# KDE
flatpak install flathub --assumeyes --user \
    org.kde.blinken \
    #org.kde.gcompris \
    org.kde.kalgebra \
    #org.kde.kanagram \
    org.kde.kbruch \
    org.kde.kgeography \
    #org.kde.khangman \
    #org.kde.kig \
    #org.kde.kstars \
    #org.kde.ktouch \
    org.kde.palapeli

# Other
flatpak install  flathub --assumeyes --user \
    com.tux4kids.tuxmath \
    com.tux4kids.tuxtype \
    net.sourceforge.Klavaro

# Scratch (& Similar)
# I only install one at a time.
flatpak install flathub --assumeyes edu.mit.Scratch
flatpak install flathub --assumeyes org.turbowarp.TurboWarp
```



# Games

- Chess: Play some chess, on GNOME!
    - Available via the Fedora remote.
- Mahjongg:
    - Available via the Fedora remote.
- Quadrapassel: What it says, for GNOME.
    - Available via the Fedora remote.
- Reversi:
    - Available via the Fedora remote.

```bash
# Gnome
flatpak install flathub --assumeyes \
    org.gnome.Chess \
    org.gnome.five-or-more \
    org.gnome.Four-in-a-row \
    org.gnome.Mahjongg \
    org.gnome.Nibbles \
    org.gnome.Quadrapassel \
    org.gnome.Reversi \
    org.gnome.SwellFoop \
    org.gnome.Tali \
    org.gnome.Tetravex

# KDE
flatpak install flathub --assumeyes \
    org.kde.kapman \
    org.kde.knavalbattle \
    org.kde.kolf \
    org.kde.konquest \
    org.kde.ksirk \
    org.kde.ktuberling \
    org.kde.kubrick \
    org.kde.granatier \
    org.kde.palapeli
    
flatpak install flathub --assumeyes \
    io.github.nokse22.ultimate-tic-tac-toe \
    net.tedomum.CapBattleship \
    com.frogatto.Frogatto \
    io.github.retux_game.retux \
    org.supertuxproject.SuperTux \
    net.sourceforge.lgames.LPairs2 \
    org.gottcode.Connectagram \
    org.gottcode.Tetzle

```



# Graphics & Photography:

```bash
flatpak install flathub --assumeyes \
    com.obsproject.Studio \
    com.obsproject.Studio.Plugin.BackgroundRemoval \
    com.obsproject.Studio.Plugin.DroidCam \
    com.obsproject.Studio.Plugin.GStreamerVaapi \
    com.obsproject.Studio.Plugin.InputOverlay \
    com.obsproject.Studio.Plugin.MoveTransition

# Set color theme to Acri
```



# Internet & Networking

```bash
# Other mainstream and useful browsers:
flatpak install flathub --assumeyes com.google.Chrome
```



# Office & Productivity

NA



# System & Utilities

NA

