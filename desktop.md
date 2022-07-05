# About

GUI tools/software. Don't install this on a server. Just don't. 

# First Boot

A few things I like to do to make my life a littler more comfortable.

- Open `Settings`:
    - Mouse: Enable "Tap to Click".
    - Make the mouse cursor bigger.
    - Open Software, enable third party software repositories.
        - Activate the Google Chrome repo.
        - Activate the NVIDIA Driver repo, if applicable.

Then run the following bash commands.

# Accessories

## Fonts

```bash
sudo dnf install \
     adobe-source-code-pro-fonts \
     adobe-source-sans-pro-fonts \
     adobe-source-serif-pro-fonts \
     cascadia-code-fonts \
     fira-code-fonts \
     ibm-plex*\
     
```

## Tools

```bash
sudo dnf install \
    dconf-editor \
    gnome-dictionary \
    deja-dup* \
    file-roller file-roller-nautilus \
    gnome-console.x86_64 \
    gnome-maps \
    gnome-text-editor \
    gnome-tweaks \
    gnome-weather \
    gnome-shell-extension-caffeine.noarch \
    gnome-shell-extension-dash-to-dock.noarch \
    gnome-shell-extension-emoji-selector.noarch \
    gnome-usage.x86_64 \
    mediawriter.x86_64 \
    seahorse \
    xdg-desktop-portal.x86_64

sudo dnf remove \
    gnome-system-monitor \
    gnome-extensions-app \
    gedit* \
    gnome-terminal*

## When in doubt, I tend to opt for the Flathub repo.
flatpak install \
    com.rafaelmardojai.Blanket \
    org.gnome.Extensions
```

From within Gnome Extensions, I install:

- Gnome Clipboard
- Tactile


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
flatpak install \
    com.github.maoschanz.drawing \
    org.gnome.gThumb

# Primarch only:
flatpak install org.darktable.Darktable
```



# Internet

```bash
sudo dnf install \
    gnome-connections \
    epiphany \
    remmina remmina-gnome-session \
    remmina-plugins-exec \
    remmina-plugins-python \
    remmina-plugins-rdp \
    remmina-plugins-secret \
    remmina-plugins-www

flatpak install re.sonny.Tangram

# Primarch only:
flatpak install de.haeckerfelix.Shortwave
sudo dnf install \
    remmina-plugins-spice \
    remmina-plugins-vnc \
    remmina-plugins-x2go


# I've never _actually_ used this . . . 
#sudo dnf install seafile.x86_64 seafile-client.x86_64
```

If I'm going to use Wavebox on the system:

```bash
sudo rpm --import https://download.wavebox.app/static/wavebox_repo.key
sudo wget -P /etc/yum.repos.d/ https://download.wavebox.app/stable/linux/rpm/wavebox.repo
sudo dnf install Wavebox
```


# Multimedia

```bash
flatpak install \
    io.freetubeapp.FreeTube \
    org.gnome.Lollypop \
    com.github.hugolabe.Wike \
    de.haeckerfelix.Shortwave \

# Primarch only
# Podcasts is a Circle app, not a gnome-core app.
flatpak install com.gitlab.newsflash org.gnome.Podcasts
```



# Office

```bash
sudo dnf install \
    geary \
    hunspell.x86_64 hunspell-en-US hunspell-en \
    libreoffice.x86_64

flatpak install \
    slack \
    us.zoom.Zoom \
    
# Primarch only:
flatpak install fr.free.Homebank

# TODO on primarch: flatpak remove org.gnome.PasswordSafe
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
- Make dnf faster!
  - `sudo vim /etc/dnf/dnf.conf`
```
# append the following two lines to
# /etc/dnf/dnf.conf
fastestmirror=true
deltarpm=true
```

## Firefox

I have multiple profiles:

- Andy (Personal) 
- Acuitas
- ACPHS

Each email address has an FireFox account. FF will then send you the code.
This will sync extensions, bookmarks, etc.

