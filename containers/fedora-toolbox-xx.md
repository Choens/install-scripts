# About

- Builds a pet dev container with lots off bells and whistles.
- Easy to use `toolbox enter`.
- Uses toolbox to separate my main system from my development tools.
- When upgrading from one fedora release to the next, the easiest thing to do is to delete you existing fedora-toolbox-xx and rebuild it.



# First Steps

- Run the following from your primary system.
- Congrats! Soon, you will have a toolbox.
  - I used to accept the default image,
    registry.fedoraproject.org/fedora-toolbox:latest
  - That has proven to not always be reliable, especially right after a new
    release.
  - And I _need_ my toolbox to be on the new release!
  - Therefore, I hardcode the version number now.
- Note: Agree to the defaults for the second command.

```bash
# Creates a container using toolbox's default name, my-distrobox.
#toolbox create --image registry.fedoraproject.org/fedora-toolbox:42 --pull
toolbox create
toolbox enter

# Make sure you are using the version of Fedora you want to use:
cat /etc/os-release

# Install the (optional) Terra Repo: https://terra.fyralabs.com/
sudo dnf install --nogpgcheck --repofrompath \
    'terra,https://repos.fyralabs.com/terra$releasever' terra-release
sudo dnf --refresh upgrade
sudo dnf install terra-release
```



# CLI Tools

These are tools to be used within the toolbox from the CLI. I don't tend to
export these. These are split up into found sections:

1. Utils/Shells
2. Data Tools
3. Programming Languages
4. Editors (CLI)

This is designed to be very modular and I sometimes list things which I no
longer use, but keep "in the script" for future reference.

## Shells/Tools

- Build Tools: Includes gcc, make, etc.
- General Purpose Utilities:
  - btop: Resource monitor that shows usage and stats
  - dnf-plugins-core: Core Plugins for DNF
  - httpie: A Curl-like tool for humans
  - hwinfo: Hardware information tool
  - poppler-utils: Command line utilities for converting PDF files
  - ranger:
  - tldr: Simplified and community-driven man pages
  - trash-cli: CLI interface to the freedesktop.org trashcan
  - tree-sitter-cli: CLI tool for developing, testing, and using Tree-sitter parsers
  - Terra Repo: Stuff I can only use/install if I have installed the Terra repo.
    - eza:
      <https://eza.rocks/>
    - gitoxide:
    - glow:
      <https://github.com/charmbracelet/glow>
    - gping:
      <https://github.com/orf/gping>
    - starship:
      <https://starship.rs/>
    - xplr:
      <https://github.com/sayanarijit/xplr?tab=readme-ov-file>
    - zellij:
      <https://github.com/zellij-org/zellij>
- Git Tools:
  - git: Fast, scalable, distributed revision control system
  - gh: A command-line interface to GitHub
  - gitui: Blazing fast terminal-ui for git
  - glab: A GitLab CLI tool bringing GitLab to your command line
  - tig: Tig is a repository browser for git and a nice pager
  - Terra Repo:
    - lazygit: Simple terminal UI for git commands
      <https://github.com/jesseduffield/lazygit>
- Shells:
  - fish: Friendly interactive shell
  - nu: A new type of shell
  - xonsh: A general purpose, Python-ish shell
- Text/Graphics:
  - GraphicsMagick: ImageMagick fork
  - fzf: A command-line fuzzy finder written in Go
  - pandoc: Markup conversion tool
  - ripgrep: Line-oriented search tool

```bash
# Build Tools: 612 MB installed
# Includes gcc, make, gdb, graphviz, kernel headers, popplet, etc.
sudo dnf group install -y c-development development-tools

# General purpose utilities: 46 MB installed
sudo dnf install -y \
    btop \
    dnf-plugins-core \
    httpie \
    hwinfo \
    poppler-utils \
    tldr \
    trash-cli

# Terra Repo: 96 MB installed
sudo dnf install -y chezmoi eza gping starship xplr zellij

# Git tools: 78 MB installed
sudo dnf install -y \
    git \
    gh \
    gitui \
    glab \
    tig

# Terra Repo: 21MB installed
sudo dnf install -y lazygit

# Shells: 72 MB installed
sudo dnf install -y \
    fish \
    nu \
    xonsh

# Text/Graphics: 216MB installed
sudo dnf install -y \
    GraphicsMagick \
    fzf \
    pandoc \
    ripgrep

# Terra Repo: 17 MB installed
sudo dnf install -y glow
```

## Data Tools

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

# Depends on the iucar COPR repo: 195 MB installed
sudo dnf copr enable iucar/duckdb
sudo dnf install duckdb

# ---- MariaDB ----
# 42 MB installed
#sudo dnf install -y mariadb mycli

# ---- Postgres ----
# 15 MB installed
sudo dnf install -y pgcli postgresql

# ---- SQLite ----
# 2 MB installed
sudo dnf install -y litecli sqlite
```

## Programming Languages

These are split up to make installation more modular.

- Julia: High-level, high-performance dynamic language for technical computing
- Lua: Powerful light-weight programming language
- Nodejs: Javascript runtime
- Python: No introduction needed
- R: A language for data analysis and graphics

```bash
# ---- Julia ----
# 789 MB installed
#sudo dnf install -y julia

# ---- Lua ----
# 602 KB!!! installed
sudo dnf install -y lua

# ---- Nodejs ----
sudo dnf install -y nodejs npm

# ---- Python ----
sudo dnf install -y ruff uv

# ---- R ----

# Required base installation
sudo dnf copr enable -y iucar/cran
sudo dnf install --setopt=install_weak_deps=False -y \
    R-core R-core-devel \
    R-CoprManager

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

# LaTeX:
# 427 MB installed
sudo dnf install -y texlive
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



# Editors (CLI)

Are these (mostly) CLI tools also . . . . yes . . . . sue me.

## Micro

A modern and intuitive terminal-based text Editors

```bash

# 12MB installed
sudo dnf install -y micro

```

## Microsoft Edit

- edit: A simple editor for simple needs

```bash
# 620 KB installed
sudo dnf install -y edit
```

## Neovim

- fd-find: Fd is a simple, fast and user-friendly alternative to find
- lua: Powerful light-weight programming language
- luarocks: A deployment and management system for Lua modules
- neovim: Vim-fork focused on extensibility and agility
- neovim-ale: Asynchronous NeoVim Lint Engine
- nodejs: Javascript runtime
- nodejs-npm: Node.js Package Manager
- tree-sitter-cli: CLI tool for developing, testing, and using Tree-sitter parsers

```bash

# 220 MB installed
sudo dnf install \
    fd-find \
    neovim neovim-ale python3-neovim \
    luarocks \
    nodejs nodejs-npm \
    tree-sitter-cli

# 35 MB installed
#sudo dnf install neovide
```

## Zed

```bash

# 237 MB installed
sudo dnf install zed
```
