# About

Tools & things installed when I'm focusing on using KDE.

```bash
## Consider if this makes sense.
sudo dnf swap @kde-desktop @gnome-desktop
sudo systemctl enable display-manager.service -f
sudo dnf install --allowerasing fedora-release-identity-workstation fedora-release-workstation.noarch



sudo dnf remove \
    kde*
    libunity-gtk3-parser.x86_64 \
    plasma*

## Then clean up in .config and .local!!!
```

# Accessories

```bash
dnf search icon-theme
dnf search gtk-theme
dnf search gnome-shell-theme
```

```bash
sudo dnf install \
    dconf-editor \
    gnome-dictionary \
    gnome-extensions-app \
    deja-dup* \
    file-roller file-roller-nautilus \
    gnome-feeds \
    gnome-maps \
    gnome-tweaks \
    gnome-weather \
    gnome-shell-extension-auto-move-windows.noarch \
    gnome-shell-extension-caffeine.noarch \
    gnome-shell-extension-dash-to-dock.noarch \
    gnome-shell-extension-disconnect-wifi.noarch \
    gnome-shell-extension-emoji-selector.noarch \
    gnome-shell-extension-material-shell.noarch \
    seahorse

flatpak install com.rafaelmardojai.Blanket work.openpaper.Paperwork
```

# Developer Tools

```bash
sudo dnf install \
    gedit-plugins \
    gitg.x86_64 \
    meld \
    rabbitvcs-cli rabbitvcs-nautilus \
    tilix 

flatpak install net.bartkessels.getit org.gaphor.Gaphor org.gnome.Solanum 

flatpak install net.sourceforge.squirrel_sql

```



# Education



# Games

```bash
sudo dnf install \
    gnome-chess \
    iagno \
    quadrapassel
```

# Graphics

```bash
sudo dnf install \
    darktable* \
    gimp gimp-data-extras \
    gimp-high-pass-filter \
    gimp-save-for-web \
    gpick \
    gthumb.x86_64
```



# Internet

```bash
sudo dnf install \
    epiphany \
    seafile.x86_64 seafile-client.x86_64

flatpak install re.sonny.Tangram
```


# Email

```bash
sudo dnf install \
    geary
```



# Multimedia

```bash
## TODO: How to do multiline flatpak commands.
sudo dnf install lollypop

flatpak install \
    io.freetubeapp.FreeTube \
    io.lbry.lbry-app
flatpak install com.belmoussaoui.Obfuscate
flatpak install com.github.hugolabe.Wike com.gitlab.newsflash
flatpak install de.haeckerfelix.Shortwave org.gnome.Podcasts
```

# Office

```bash
flatpak install org.gnome.Connections org.gnome.PasswordSafe fr.free.Homebank
```

# Settings

## Gnome

- Keyboard Shortcuts:
    - Set Switch Windows to Alt+Tab.
    - Set Switch Applications to Super+Tab
- Set Caps Lock up as an extra Control Key.
- Set mono-font to Adobe Source Code Pro or Cascadia.
- Bluetooth: Setup headphones, phone.
- Touchpad: Enable Tap to Click
- I set the pixel height/scale of my laptop to be equal to my external monitor.
    - In this case 1080. YMMV
    - This is important for apps that don't handle changing scale well.
