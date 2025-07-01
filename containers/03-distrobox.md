# About

Although this setup does not use an atomic distro such as Silverblue, I do keep
the core OS as minimal as possible. All development work happens inside of
containers.

I use distrobox to separate my main system from my development tools.

- Run the following from your primary system.
- Congrats! Soon, you will have a distrobox.
    - I used to accept the default image,
      registry.fedoraproject.org/fedora-toolbox:latest
    - That has proven to not always be reliable, especially right after a new
      release.
    - And I _need_ my distrobox to be on the new release!
    - Therefore, I hardcode the version number now.
- Note: Agree to the defaults for the second command.

```bash

# Install distrbox onto your local system.
sudo dnf install distrobox

# Creates a container using distrobox's default name, my-distrobox.

distrobox create --image registry.fedoraproject.org/fedora-toolbox:42 --pull --name dev
distrobox enter dev

# Make sure you are using the version of Fedora you want to use:
cat /etc/os-release
```

- The name is silly, but it makes it easy to identify this container.
- I tend to treat this distrobox like I would any other system.



# CLI Tools

These are tools to be used within the distrobox from the CLI. I don't tend to
export these. These are split up into found sections:

1. Utils/Shells
2. Data Tools
3. Programming Languages
4. Editors (CLI)

This is designed to be very modular and I sometimes list things which I no
longer use, but keep "in the script" for future reference.

## Shells/Tools:

- Build Tools: Includes gcc, make, etc.
- General Purpose Utilities:
    - btop: Resource monitor that shows usage and stats
    - dnf-plugins-core: Core Plugins for DNF
    - httpie: A Curl-like tool for humans
    - hwinfo: Hardware information tool
    - poppler-utils: Command line utilities for converting PDF files
    - tldr: Simplified and community-driven man pages
    - trash-cli: CLI interface to the freedesktop.org trashcan
    - tree-sitter-cli: CLI tool for developing, testing, and using Tree-sitter parsers
- Git Tools:
    - git: Fast, scalable, distributed revision control system
    - gh: A command-line interface to GitHub
    - gitui: Blazing fast terminal-ui for git
    - glab: A GitLab CLI tool bringing GitLab to your command line
    - tig: Tig is a repository browser for git and a nice pager
    - lazygit: Simple terminal UI for git commands
- Shells:
    - fish: Friendly interactive shell
    - nu: A new type of shell
    - xonsh: A general purpose, Python-ish shell
- Text/Graphics:
    - GraphicsMagick: ImageMagick fork
    - fzf: A command-line fuzzy finder written in Go
    - pandoc: Markup conversion tool
    - ripgrep: Line-oriented search tool

```{r}

# Build Tools
sudo dnf group install -y c-development development-tools

# General purpose utilities:
sudo dnf install -y \
    btop \
    dnf-plugins-core \
    httpie \
    hwinfo \
    poppler-utils \
    tldr \
    trash-cli \
    tree-sitter-cli

# Git tools:
# TODO: Reduce these
sudo dnf install -y \
    git \
    gh \
    gitui \
    glab \
    tig

# Shells:
sudo dnf install -y \
    fish \
    nu \
    xonsh
    
# Text/Graphics
sudo dnf install -y \
    GraphicsMagick \
    fzf \
    pandoc \
    ripgrep

```



## Data Tools: 

These are split up to make installation more modular.

- DuckDB: 
    - duckdb: Honestly, you need this
- MariaDB: Not installed by default
    - mariadb: MariaDb client program
    - mycli: Interactive CLI for MySQL Database
- Postgres:
    - pgcli: Interactive CLI for Postgres Database
    - postgresql: Postgres client program
- SQLite: Not installed by default
    - litecli: Interactive CLI for SQLite Database
    - sqlite: SQLite client program
- usql: Universal SQL tool.
    - Installed right after installing golang.

```bash

# ---- DuckDB ----
# Installs directly from the DDB website, but does not update:
#sudo curl https://install.duckdb.org | sh

# Depends on the iucar COPR repo:
sudo dnf copr enable iucar/duckdb
sudo dnf install duckdb


# ---- MariaDB ----
#sudo dnf install -y mariadb mycli

# ---- Postgres ----
sudo dnf install -y pgcli postgresql

# ---- SQLite ----
#sudo dnf install -y litecli sqlite

```


## Programming Languages: 

These are split up to make installation more modular.

- Golang: The Go Programming Language
    - Not installed by default
- Julia: High-level, high-performance dynamic language for technical computing
    - Not installed by default
- Lua: Powerful light-weight programming language
- Nodejs: Javascript runtime
- Python: No introduction needed
- R: A language for data analysis and graphics

```bash

# ---- Golang ----
#sudo dnf install -y golang

# Installs usql
#go install github.com/xo/usql@latest
#./usql -c '\drivers'

#Httpexpect
#mage
#task
#taskctl


# ---- Julia ----
#sudo dnf install -y julia

# ---- Lua ----
sudo dnf install -y lua

# ---- Nodejs ----
sudo dnf install -y nodejs npm

# ---- Python ----
sudo dnf install -y ruff uv

# ---- R ----

# Required base installation
sudo dnf copr enable -y iucar/cran
sudo dnf install -y R-CoprManager

sudo dnf install -y \
    pandoc \
    R-flexiblas \
    R-CRAN-broom \
    R-CRAN-duckdb R-CRAN-duckplyr \
    R-CRAN-gtsummary \
    R-CRAN-here \
    R-CRAN-httpgd \
    R-CRAN-IRkernel \
    R-CRAN-janitor \
    R-CRAN-knitr \
    R-CRAN-lmtest \
    R-CRAN-pacman \
    R-CRAN-patchwork \
    R-CRAN-RPostgres \
    R-CRAN-tidymodels \
    R-CRAN-tidyverse \
    R-CRAN-tinytex \
    R-CRAN-quarto

# Optional R things . . . . 

sudo dnf install -y R-CRAN-learnr R-CRAN-swirl

sudo dnf install -y R-CRAN-usethis 

sudo dnf install -y \
    R-CRAN-ggrepel \
    R-CRAN-RColorBrewer

sudo dnf install -y \
    R-CRAN-nanoparquet \
    R-CRAN-openxlsx


sudo dnf install -y \
    R-CRAN-plotly \
    R-CRAN-shiny \
    R-CRAN-radiant \
    R-CRAN-rsconnect

```


## Editors (CLI):

```bash

sudo dnf install --setopt=install_weak_deps=False -y \
    fd-find \
    neovim neovim-ale python3-neovim \
    luarocks \
    nodejs nodehs-npm \
    tree-sitter-cli

# http://www.lazyvim.org/installation
git clone https://github.com/LazyVim/starter ~/.config/nvim

```



# GUI/Exported Apps

These are GUI applications installed in the distrobox which are then exported to
the host system. Duplication across tools is intentional in order to make this
as modular as possible.

They serve to access to the distrobox instance, in addition to the terminal.

- Emacs
- RStudio
- Positron: Not installed by default.
- Spyder: Not installed by default.
- Visual Studio Code

```bash

# Things I like to install everywhere. Visual consistency, it's my thing.
sudo dnf install -y \
    adwaita-fonts-all \
    cascadia-code-fonts \
    cascadia-code-nf-fonts

```

## Emacs

```bash

sudo dnf install -y \
    PackageKit-gtk3-module \
    cmake \
    emacs \
    fd-find \
    ghostscript \
    poppler \
    ripgrep \
    tree-sitter-cli \
    zeromq zeromq-devel

distrobox-export --app emacs
```

## Kate

```bash
sudo dnf install kate kate-plugins
distrobox-export --app kate
```

## LabPlot / Cantor / Kalgebra

```bash
sudo dnf install cantor cantor-R labplot kalgebra
distrobox-export --app cantor
distrobox-export --app labplot
distrobox-export --app kalgebra
```

## Positron

Not installed by default.

```bash
sudo dnf copr enable -y iucar/posit-dev
sudo dnf check-update
#sudo dnf install -y ark-kernel positron
#distrobox-export --app positron
```

## RStudio

```bash
sudo dnf copr enable -y iucar/rstudio
sudo dnf install -y rstudio-desktop
distrobox-export --app rstudio
```

## Spyder

Not installed by default, mostly because it pulls in so many dependencies.

```bash
#sudo dnf install python3-spyder
#distrobox-export --app spyder
```

## VSCode

```bash
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

sudo dnf check-update
sudo dnf install code
distrobox-export --app code
```
