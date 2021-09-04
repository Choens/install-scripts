# About

Tools & things installed across desktop environments.

```bash
dnf group list
```

# Accessories

```bash
sudo dnf install \
     adobe-source-code-pro-fonts \
     adobe-source-sans-pro-fonts \
     adobe-source-serif-pro-fonts \
     cascadia-code-fonts \
     fira-code-fonts \
     ibm-plex*\
     mediawriter.x86_64
     xdg-desktop-portal.x86_64
```



# Developer Tools

## Build Tools

```bash
sudo dnf group install "C Development Tools and Libraries" 
```

## Command Line Tools

```bash
sudo dnf install \
    dos2unix \
    htop \
    nnn \
    pandoc pandoc-citeproc \
    pwgen \
    ranger \
    ripgrep \
    the_silver_searcher
```

## Data

```bash
sudo dnf install \
    freetds freetds-devel.x86_64 \
    unixODBC.x86_64 unixODBC-devel.x86_64 unixODBC-gui-qt.x86_64
```

## Editors

```bash

# Editors ====================================================================
sudo dnf install \
    emacs \
    kpcli \
    libtool \
    neovim neovim-qt python3-neovim 

flatpak install \
    io.dbeaver.DBeaverCommunity

TODO: Improve my VS Code instructions.

# No? - I think it might be easier to install all of this via emacs!
emacs-auctex emacs-auctex-doc \
    emacs-blacken \
    emacs-ess emacs-ess-doc \
    emacs-goodies \
    emacs-magit \
    emacs-slime \
```
Review/research:
- elpa-openwith
- elpa-clues-theme
- elpa-color-theme-modern
- elpa-company-lsp
- elpa-db
- elpa-deft
- elpa-el-mock
- elpa-elfeed
- elpa-elfeed-web
- elpa-elpy
- elpa-esh-help/
- elpa-eshell-bookmark
- elpa-eshell-git-prompt
- elpa-eshell-prompt-extras
- elpa-eshell-z
- elpa-magit-popup
- elpa-magithub
- elpa-markdown-mode
- elpa-markdown-toc
- elpa-monokai-theme
- elpa-org
- elpa-persp-projectile
- elpa-perspective
- elpa-projectile
- elpa-python-environment
- elpa-py-isort
- elpa-restart-emacs
- elpa-sesman
- elpa-solarized-theme
- elpa-tabbar
- elpa-tablist
- elpa-virtualenvwrapper/
- elpa-ztreeq

```bash
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
dnf check-update
sudo dnf install code
```

## Git

```bash
sudo dnf install \
    git \
    git-credential-libsecret \
    git-crypt \
    git-gui \
    gitk \
    git-tools \
    tig
```

## Nodejs

```bash
sudo dnf install nodejs.x86_64 npm.x86_64
```

## Python

```bash
sudo dnf install -y \
    black \
    python3-Cython.x86_64 \
    python3-jedi \
    python3-nbconvert \
    python3-notebook \
    python3-numpy \
    python3-pandas \
    python3-pymssql \
    python3-qtconsole \
    python3-rope \
    python3-setuptools python3-setuptools_scm \
    python3-scipy \
    #python3-spyder python3-spyder-kernels python3-pyls-spyder.noarch \
    python3-statsmodels \
    python3-sqlalchemy \
    python3-wheel \
    visidata
```

## R

```bash
sudo dnf install \
     cairo-devel \
     libcurl-devel \
     libgit2.x86_64 libgit2-devel.x86_64 \
     openssl-devel \
     R \
     R-DBI \
     R-DT \
     R-IRdisplay \
     R-IRkernel \
     R-RColorBrewer \
     R-RPostgres \
     R-RSQLite \
     R-askpass \
     R-broom \
     R-core-devel.x86_64 \
     R-credentials \
     R-dbplyr \
     R-dplyr.x86_64 \
     R-dtplyr \
     R-devel.x86_64 \
     R-devtools \
     R-ggplot2 \
     R-hunspell \
     R-R2html
     R-java-devel.x86_64 \
     R-IRkernel.noarch \
     R-lintr \
     R-lubridate.x86_64 \
     R-markdown-devel.x86_64 \
     R-odbc.x86_64 \
     R-openssl.x86_64 \
     R-purrr.x86_64 \
     R-Rcpp-devel.x86_64 \
     R-readr.x86_64 \
     R-readxl.x86_64 \
     R-rematch2 \
     R-rlang.x86_64 \
     R-rsconnect \
     R-shiny \
     R-stringi-devel.x86_64 \
     R-stringr \
     R-tidyr \
     R-tidyselect \
     R-tinytex \
     R-tufte \
     R-vctrs-devel.x86_64 \
     R-xml2.x86_64 \
     R-xml2-devel.x86_64 \
     R-yaml \
     R-zoo-devel.x86_64 \
     rstudio-desktop.x86_64

R -e 'install.packages(c("config", "flexdashboard", "ggiraph", "httpgd", "later", "pins", "shinydashboard", "plotly", "pool", "tidyverse"))'
```
git ahead (git client, flatpak)



# Graphics

```bash
sudo dnf install \
    darktable*
```

# Internet

```bash
sudo dnf install \
    firefox-wayland \
    google-chrome-stable \
    remmina.x86_64 remmina-gnome-session.x86_64 \
    remmina-plugins-exec.x86_64 \
    remmina-plugins-nx.x86_64 \
    remmina-plugins-rdp.x86_64 \
    remmina-plugins-secret.x86_64 \
    remmina-plugins-spice.x86_64 \
    remmina-plugins-st.x86_64 \
    remmina-plugins-vnc.x86_64 \
    remmina-plugins-www.x86_64 \
    remmina-plugins-xdmcp.x86_64
```

```bash
sudo rpm --import https://download.wavebox.app/static/wavebox_repo.key
sudo wget -P /etc/yum.repos.d/ https://download.wavebox.app/stable/linux/rpm/wavebox.repo
sudo dnf install Wavebox
```




# Office

```bash
sudo dnf install \
    hunspell-en-US.noarch hunspell-en.noarch \
    libreoffice.x86_64

flatpak install org.onlyoffice slack us.zoom.Zoom 
flatpak install com.microsoft.Teams
```
# Science & Engineering

```bash
sudo dnf install \
    pspp
    julia.x86_64 \
    rstudio \
    qgis
```

# System Settings

- Map Caps Lock to Ctrl
- Make sure you get HiDPI squared away.
- Make dnf faster!
  - `sudo vim /etc/dnf/dnf.conf`
```
# append the following two lines to
# /etc/dnf/dnf.conf
fastestmirror=true
deltarpm=true
```
- `sudo dnf group upgrade --with-optional Multimedia`

## Resources
- https://en.opensuse.org/High_DPI

## Nvidia

If on a laptop, you should probably disable the Nvidia card to save the the 
battery.

```
sudo echo "blacklist nouveau" >> /etc/modprobe.d/nouveau.conf
```

## Firefox

I have multiple profiles:

- Andy (Personal) 
- Acuitas
- ACPHS

Each email address has an FireFox account. FF will then send you the code.
This will sync extensions, bookmarks, etc.

## Chrome

- Use Firefox Developer Theme or some other Dark theme.

## Fixes!

- I have laptops with hipdi screens and external monitors which are
  not (SAD). If you are having weird scaling problems with Firefox,
  etc., open dconf-editor and look for xsettings -> overrides and make
  sure it is BLANK! If there's anything in it - remove it and your
  problems will probably go away.
- If you need to tweak the boot params (UEFI)
    - Edit: /etc/default/grub
    - Run: sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg
    - Reboot: Enjoy!
