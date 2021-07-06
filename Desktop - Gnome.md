# About

Tools & things installed when I'm focusing on using Gnome.

```bash
sudo systemctl enable display-manager.service -f
```

# Accessories

```bash
dnf search icon-theme
dnf search gtk-theme
dnf search gnome-shell-theme

# Theme
# Things specific to the Gnome Desktop that don't fit anywhere.
# Some of these don't appear to be working???
sudo dnf install \
    gnome-shell-extension-dash-to-dock \
    gnome-shell-extension-user-theme

sudo dnf install \
    # alacarte \ # Never used it.
    dconf-editor \
    # gnome-dictionary \ # Never used it.
    # gnome-documents \ # Never used it/
    gnome-extensions-app \
    # deja-dup* \
    # gnome-feeds \
    # gnome-maps \
    gnome-tweaks \
    # gnome-weather \
```



# Developer Tools

```bash
sudo dnf install \
    gedit-plugins \
    gitg.x86_64 \
    meld \
    rabbitvcs-cli rabbitvcs-nautilus \
    tilix 

flatpak install \
    net.bartkessels.getit
```



# Education



# Games

```bash
sudo dnf install \
    gnome-chess \
    iagno \
    quadrapassel

```


```bash
sudo systemctl enable sddm.service -f
```

# Graphics

```bash
sudo dnf install \
    gimp gimp-data-extras \
    gimp-high-pass-filter \
    gimp-save-for-web \
    gpick \
    gthumb.x86_64
```



# Internet

## Browsers

```bash
# For this to work, you must first enable the Google Chrome repo in Software.
# While you are there, enable openh264

sudo dnf install chrome-gnome-shell epiphany
```



# Email

```bash
sudo dnf install \
    evolution  evolution-ews.x86_64 \
    geary

sudo dnf install \
    thunderbird thunderbird-wayland
```



# Multimedia

```bash
sudo dnf install lollypop
```

# Office

# Settings