# About

Tools useful for programming. I really only use these lists on desktops/laptops.
For language/library installation on servers, see server.md.

## Software Search

Is there anything new I should explore?
```bash
dnf search database
dnf search spreadsheet
dnf search excel
dnf search csv
dnf search schedule
dnf search automate
```



# Build Tools/Libraries

```bash
sudo dnf group install "C Development Tools and Libraries"
sudo dnf install libtool
```



# Database

```bash
sudo dnf install \
    litecli \
    pgcli \
    postgresql.x86_64 \
    sqlite
```



# Virtualization

## Podman

```bash
Obviously, only useful where I'm going to be doing docker development.

TODO: Cleanup

```bash
sudo dnf install podman podman-docker podman-compose podman-tui

## Maybe:
sudo dnf install docker-compose

## To use docker compose:
sudo systemctl enable podman.socket
sudo systemctl start podman.socket
sudo systemctl status podman.socket

## TEST -- You want to see  "OK"
sudo curl -H "Content-Type: application/json" --unix-socket /var/run/docker.sock http://localhost/_ping


## TODO: Learn more about this.
## To run docker successfully, SELinux needs to be disabled.
## To do so temporarily:
sudo setenforce 0 # Or 1 to re-enable.

# To do so permanently, edit /etc/selinux/config and:
# SELINUX=permissive 
# or
# SELINUX=disabled
#
# The default (Fedora 36) is:
# SELINUX=enforcing
```

## Not sure how this works.

```bash
flatpak install io.podman_desktop.PodmanDesktop 
```

# Editors

This is a big one.

## Neovim

```bash
sudo dnf install \
    libtree-sitter.x86_64 \
    aspell.x86_64 aspell-en \
    hunspell.x86_64 hunspell-en-US hunspell-en \
    micro \
    neovim python3-neovim \
    ripgrep \
    the_silver_searcher
```

For full setup instructions, see [Vim](./vim.md)

## VS Code

Useful info: [VS Code Setup Linux](https://code.visualstudio.com/docs/setup/linux)

```bash
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

sudo dnf check-update
sudo dnf install code
```

## Emacs

I spent most of my life as an Emacs fan, so I can't bring myself to delete this, but in the end I moved on. It is a wonderful editor and my fingers will always remember my Emacs chord-combos fondly.

```bash
sudo dnf install emacs
```

My .emacs.d, which should install needed software automatically, is here: []()



# Git

```bash
sudo dnf install \
    git \
    git-credential-libsecret \
    git-crypt \
    git-tools \
    gitui \
    tig
```



# Languages

## Nodejs

```bash
sudo dnf install nodejs.x86_64 npm.x86_64
```

## Python

```bash
# Tools
sudo dnf install -y \
    black \
    conda.noarch \
    python3-bpython \
    python3-jedi  \
    python3-jupyter-console python3-jupyter-packaging \
    python3-qtconsole \
    python3-rope \
    visidata

sudo dnf install -y \
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
    python3-poetry \
    python3-scikit-learn python3-scipy \
    python3-seaborn.noarch \
    python3-statsmodels \
	python3-sqlalchemy python3-sqlalchemy+postgresql_asyncpg.x86_64
    
# I try to keep this as minimal as I can.
pip install DataProfiler
```

## R

Installing R on Linux is EASY. All you need is `sudo dnf install R` and you are done. However, having s system set up to then be able to effectively compile packages from CRAN is NOT simple. If you have installed the bsic C development tools and libtool, the folowing will give you a solid basic install capable of interacting with Jupyter notebooks, perform basic analyses, etc.

```bash
# A basic R setup. I wuold recommend installing the "Basics" packages below.
sudo dnf install \
     R R-devel \
     R-core-devel R-Rcpp-devel R-markdown-devel \
     R-stringi-devel R-vctrs-devel R-xml2-devel R-zoo-devel \
     R-IRdisplay R-IRkernel \
     sqlite
```

If you intend to connect to a Pstgres database, you need to install these two packages.

```bash
## Only needed if you are going to install the postgres database packages:
sudo dnf install libpq.x86_64 libpq-devel
```

If you want to use the built-in version of RStudio, run this. If you want to install frm the RStudio website, see below.

```bash
sudo dnf install rstudio-desktop.x86_64
```

Right now, I'm actually installing this from RStudio directly, so I can get quarto.
If installing from RSudio, you will have to adjust this, to make sure you are getting the msot recent version.
Their package has a dependency on sqlite. If you installed the database stuff above, you should be fine. Otherwise, install sqlite. Other than that, it is self-contained.

```bash
## Note the exact package name changes over time (of course).
cd ~
wget https://download1.rstudio.org/desktop/rhel8/x86_64/rstudio-2022.07.0-548-x86_64.rpm

sudo rpm --install rstudio-2022.07.0-548-x86_64.rpm
rm rstudio-2022.07.0-548-x86_64.rpm
```

If you are using RStudio to access quarto, you need to open RStudio, 

If you want to use Visual Studio Code as a front-end to R, I recommend replacing the R cli tool with Radian.

```bash
pip install radian
```

I find it easier/more stable to install the majority of my packages from CRAN, not the Fedora repo. It also guarantees I'm using the most recent packages. And it gives my processor some exercise. On modern multi-core systems, it goes faster if you flex that power. That said, this still takes a while. The Fedora repo also lacks the metapackage `tidyverse` and _many_ of my exploratory scripts/class scripts start with `library(tidyverse)`, so that's a problem.

```R
# Basics ----------------
# This will get you a good set of basic packages.
# All of the other installs below assume you have these installed.
p <- c(
    "R2HTML",
    "config",
    "tidyverse")
install.packages(p, Ncpus = 4)

# Database ----------------
p <- c("RPostgres", "pool")
install.packages(p, Ncpus = 4)

# Modeling/ML ----------------
p <- c("pins", "tidymodels", "vetiver")
install.packages(p, Ncpus = 4)

# Shiny ----------------
p <- c(
    "flexdashboard",
    "httpgd",
    "later",
    "rsconnect",
    "shiny",
    "shinydashboard",
    "plotly"
    )
install.packages(p, Ncpus = 4)
```
