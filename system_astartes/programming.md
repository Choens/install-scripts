# About

Tools useful for programming.



# Build/CLI Tools

```bash
#sudo dnf group install "C Development Tools and Libraries"

#sudo dnf install libtool

sudo dnf install \
    NetworkManager-tui \
    conda \
    distrobox \
    fish \
    htop \
    hwinfo \
    neofetch \
    pwgen \
    ranger \
    xonsh \
    yad
```



# GUI Tools

Collection of GUI tools which are useful regardless of what you are doing.

RPM:
- Dconf Editor: Tool for searching/editng the dconf database
- gitg: Git GUI for GNOME.
- meld: Diff tool
- rabbit: Integrates nautilus and Git
- tilix: GTK tiling terminal.

```bash
sudo dnf install \
    dconf-editor \
    gitg \
    meld \
    rabbitvcs-cli rabbitvcs-nautilus \
    tilix tilix-nautilus
```

Flatpak:

- Cockpit client: A client for Fedora cockpit.
- Devtools: Useful development tools
- Gaphor: UML modeling
- Obfuscate: Obfuscate screenshots, etc.

```bash
flatpak install -y\
    com.belmoussaoui.Obfuscate \
    me.iepure.devtoolbox \
    org.cockpit_project.CockpitClient \
    org.gaphor.Gaphor 
```



# Data/Database

CLI:

- Visidata (vd) is a python program that lets you view tabular data and connect to databases.

```bash
sudo dnf install visidata
```

GUI:

I don't always install this.

```bash
flatpak install -y\
    io.dbeaver.DBeaverCommunity
```

## Database Specific Tools

There is an emphasis here on CLIENT side setup.

### Access

CLI:

```bash
sudo dnf install mdbtools
```

### MariaDB

CLI:

```bash
sudo dnf install mariadb mycli
```

SERVER:

```bash
sudo dnf install mariadb-server

sudo systemctl enable mariadb
sudo systemctl disable mariadb

sudo systemctl start mariadb
sudo systemctl stop mariadb

sudo mysql_secure_installation
```

### Postgres

CLI:

```bash
sudo dnf install \
    pgcli 
```

### SQLite

CLI: 

```bash
sudo dnf install \
    litecli \
    sqlite
```



# Containers

```bash
sudo dnf install \
    distrobox \
    podman \
    podman-docker \
    podman-compose \
    podman-plugins \
    podman-remote \
    podman-tui
```

## Not sure how this works.

```bash
flatpak install io.podman_desktop.PodmanDesktop 
```



# Git

```bash
sudo dnf install \
    git \
    git-credential-libsecret \
    git-crypt \
    git-tools \
    gitui \
    tig

# I oft4en don't bother to install this
flatpak install io.github.shiftey.Desktop
```


# Language Specific

## Julia

```bash
sudo dnf install julia julia-devel
```

## Lua

```bash
sudo dnf install lua
```
## Nodejs

```bash
sudo dnf install nodejs.x86_64 npm.x86_64
```

## Python

```bash
sudo dnf install -y \
    black \
    python3-jedi  \
    python3-pip \
    python3-poetry \
    python3-rope
```

Packages I like:
python3-arviz python3-pymc3 \
python3-bokeh \
python3-jedi \
python3-ipywidgets \
python3-hypothesis+pandas \
python3-nbconvert python3-nbformat \
python3-notebook \
python3-numpy \
python3-pandas python3-pandas-datareader \
python3-pingouin \
python3-plotly \
python3-pyarrow \
python3-scikit-learn python3-scipy \
python3-seaborn.noarch \
python3-snappy \
python3-statsmodels \
python3-sqlalchemy python3-sqlalchemy+postgresql_asyncpg.x86_64
polars
connectorx

## R


# Other

- ARX: Data anonymization tool

```bash
flatpak install org.deidentifier.arx
```
