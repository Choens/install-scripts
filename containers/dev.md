# About

- Builds a pet development container, complete with lots of bells and whistles.
- Easy to use:
    - `toolbox enter dev`
    - `distrobox enter dev`
- Separates my main system from my development tools.
- When upgrading from one fedora release to the next, the easiest thing to do is to delete `dev` and rebuild it.

Table of Contents:

1. First Steps: Create the container.
2. CLI Tools: Install shells, CLI tools, language support.
3. Editors/GUI Tools: Install tools to help you get work done.

This is a modular process, but there may be times where skipping steps creates more dependencies later or limits what you can do with the container.

## First Steps

- Run the following from `localhost`.
- Two choices, `distrobox` vs `toolbox`.
    - I go back and forth.
    - Toolbox starts up faster, but distrobox integrates with my system better.
    - Try them both and then decide!

Toolbox:
```bash
toolbox create dev
toolbox enter dev
```

Distrobox:
```
# Run this to use distrobox:
distrobox create --nvidia --name dev
distrobox enter dev
```

Either way, make sure you are running what you think you are running and update:
```
# Make sure you are using the version of Fedora you want to use:
cat /etc/os-release

# If yes, make sure you are up to date.
sudo dnf upgrade
```

## Programming Languages

These are split up to make installation more modular.

- Lua: Powerful light-weight programming language
- Nodejs: Javascript runtime
- Python: No introduction needed
- R: A language for data analysis and graphics

```bash

# ---- Lua ----
# ~602 KB!!! installed
sudo dnf install -y lua

# ---- Nodejs ----
# ~40 MB installed
sudo dnf install -y nodejs npm

# ---- Python ----
# ~62 MB installed
sudo dnf install -y python3-doit ruff uv

# ---- R ----
# ~291 MB installed
sudo dnf copr enable -y iucar/cran
sudo dnf install --setopt=install_weak_deps=False -y \
    R R-core R-core-devel \
    R-CoprManager

# Additional R Packages I always install
# ~160 MB installed
sudo dnf install -y \
    pandoc \
    R-flexiblas \
    R-CRAN-broom \
    R-CRAN-duckdb R-CRAN-duckplyr \
    R-CRAN-gtsummary \
    R-CRAN-here \
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
```

## CLI Tools

These are tools to be used within the toolbox from the CLI. I don't tend to
export these. These are split up into found sections:

1. Utils/Shells
2. Data Tools
3. Programming Languages
4. Editors (CLI)

This is designed to be very modular and I sometimes list things which I no
longer use, but keep "in the script" for future reference.

### Shells/Tools

- Build Tools: Includes gcc, make, etc.
- General Purpose Utilities:
  - btop: Resource monitor that shows usage and stats
  - fd: Fancy new find.
  - hwinfo: Hardware information tool
  - just: Just a command runner
  - poppler-utils: Command line utilities for converting PDF files
  - ranger: A vim-like file manager
  - tldr: Simplified and community-driven man pages
  - trash-cli: CLI interface to the freedesktop.org trashcan
- Git Tools:
  - git: Fast, scalable, distributed revision control system
  - gh: A command-line interface to GitHub
  - gitui: Blazing fast terminal-ui for git
  - glab: A GitLab CLI tool bringing GitLab to your command line
  - tig: Tig is a repository browser for git and a nice pager
  - lazygit: Simple terminal UI for git commands
    - <https://github.com/jesseduffield/lazygit>
- Shells:
  - nu: A new type of shell
- Text/Graphics:
  - GraphicsMagick: ImageMagick fork
  - fzf: A command-line fuzzy finder written in Go
  - pandoc: Markup conversion tool
  - ripgrep: Line-oriented search tool
  - tesseract: OCR engine


```bash
# Build Tools: ~613 MB installed
# Includes gcc, make, gdb, graphviz, kernel headers, poppler, etc.
sudo dnf group install -y c-development development-tools

# General purpose utilities: 30 MB installed (glow is about half of this)
sudo dnf install -y \
    btop \
    e2fsprogs \
    fd-find \
    hwinfo \
    glow \
    just \
    poppler-utils \
    tldr \
    tmux \
    trash-cli

# Git tools: ~39 MB installed
sudo dnf install -y \
    gh \
    glab \
    git \
    gitui \
    tig

# Shells: ~35 MB installed
sudo dnf install -y nu

# Text/Graphics: ~227MB installed
sudo dnf install -y \
    GraphicsMagick \
    fzf \
    pandoc \
    ripgrep \
    tesseract
```

### Data Tools

These are split up to make installation more modular.

- DuckDB:
  - duckdb: Honestly, you need this
- MariaDB: Not installed by default
  - mariadb: MariaDb client program
  - mycli: Interactive CLI for MySQL Database
- Postgres:
  - pgcli: Interactive CLI for Postgres Database
  - postgresql: Postgres client program

```bash
# ---- DuckDB ----
# Depends on the iucar COPR repo: ~195 MB installed
sudo dnf copr enable -y iucar/duckdb
sudo dnf install -y duckdb

# ---- MariaDB ----
# ~42 MB installed
#sudo dnf install -y mariadb mycli

# ---- Postgres ----
# ~30 MB installed
sudo dnf install -y pgcli postgresql
```

## Editors / GUI Tools

1. Emacs
2. Micro
3. Neovim
4. Positron
5. VSCode
6. Zed

First, some useful tools for GUI things:
```bash
# ~30 MB installed
sudo dnf install -y \
    adw-gtk3-theme \
    adwaita-fonts-all \
    cascadia-code-fonts \
    cascadia-code-nf-fonts
```

### Emacs

```
# ~644 MB, yeah, this is a monster
sudo dnf install -y \
    PackageKit-gtk3-module \
    cmake \
    emacs \
    fd-find \
    ghostscript \
    poppler \
    ripgrep \
    tree-sitter-cli

# Only run this if you are using distrobox:
distrobox-export --app emacs
```

### Micro

A modern and intuitive terminal-based text Editors

```bash
# ~12MB installed
sudo dnf install -y micro
```

### Neovim

- fd-find: Fd is a simple, fast and user-friendly alternative to find
- lua: Powerful light-weight programming language
  - luarocks: A deployment and management system for Lua modules
- neovim: Vim-fork focused on extensibility and agility
  - neovim-ale: Asynchronous NeoVim Lint Engine
- nodejs: Javascript runtime
  - nodejs-npm: Node.js Package Manager
- tree-sitter-cli: CLI tool for developing, testing, and using Tree-sitter parsers

```bash
# ~93 MB installed
sudo dnf install \
    fd-find fzf \
    neovim python3-neovim \
    lua luarocks \
    nodejs nodejs-npm \
    tree-sitter-cli
```

### Positron

Not installed by default.

```bash
sudo dnf copr enable -y iucar/posit-dev
sudo dnf check-update
#sudo dnf install -y ark-kernel positron

# IUCAR has disable Positron, so I'm only installing ark: ~21 MB
sudo dnf install -y ark-kernel

# Only run this if you are using distrobox:
#distrobox-export --app positron
```

1. Go to: https://positron.posit.co/download.html
2. Download the RPM to your ~/Downloads folder.
3. Install.

```bash
cd ~/Downloads
sudo dnf install Positron*.rpm
distrobox-export --app positron
rm Position*.rpm
```


### RStudio

```bash
# ~2 GB installed
sudo dnf copr enable -y iucar/rstudio
sudo dnf install -y rstudio-desktop

# Only run this if you are using distrobox:
distrobox-export --app rstudio
```

1. Go to: https://posit.co/download/rstudio-desktop/
2. Download the RPM to your ~/Downloads folder.
3. Install.

```bash
cd ~/Downloads
sudo dnf install -y rstudio*.rpm
distrobox-export --app rstudio
rm rstudio*.rpm
```


### VSCode

```bash
# ~433 MB installed
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install -y code

# Only run this if you are using distrobox:
distrobox-export --app code
```

### Zed

```
curl -f https://zed.dev/install.sh | sh

# Only run this if you are using distrobox:
distrobox-export --app zed
```

## AI

### CUDA

```
# Although I like to use nushell, this script, especially this part, assumes you are running bash.

# Install/enable CUDA:
sudo dnf config-manager setopt fedora-cisco-openh264.enabled=1
sudo dnf install -y \
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf update -y
#sudo dnf install akmod-nvidia 

sudo dnf config-manager addrepo --from-repofile=https://developer.download.nvidia.com/compute/cuda/repos/fedora$(rpm -E %fedora)/x86_64/cuda-fedora$(rpm -E %fedora).repo
sudo dnf clean all
sudo dnf module disable nvidia-driver
sudo dnf config-manager setopt cuda-fedora41-$(uname -m).exclude=nvidia-driver,nvidia-modprobe,nvidia-persistenced,nvidia-settings,nvidia-libXNVCtrl,nvidia-xconfig
sudo dnf -y install cuda-toolkit
```

### Apps

### CUDA

```
# Although I like to use nushell, this script, especially this part, assumes you are running bash.

# Install/enable CUDA:
sudo dnf config-manager setopt fedora-cisco-openh264.enabled=1
sudo dnf install -y \
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf update -y
#sudo dnf install akmod-nvidia 

sudo dnf config-manager addrepo --from-repofile=https://developer.download.nvidia.com/compute/cuda/repos/fedora$(rpm -E %fedora)/x86_64/cuda-fedora$(rpm -E %fedora).repo
sudo dnf clean all
sudo dnf module disable nvidia-driver
sudo dnf config-manager setopt cuda-fedora41-$(uname -m).exclude=nvidia-driver,nvidia-modprobe,nvidia-persistenced,nvidia-settings,nvidia-libXNVCtrl,nvidia-xconfig
sudo dnf -y install cuda-toolkit
```


### LLM Tools

```bash
sudo dnf -y install ramalama
```
