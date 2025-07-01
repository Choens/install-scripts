# About

- Creates a distrobox with an exported RStudio instance.
- I primarily use this for teaching R.
- Run the following from your primary system.

```bash

# Install distrbox onto your local system.
sudo dnf install distrobox
distrobox create --pull --name rstudio
distrobox enter rstudio

# Make sure you are using the version of Fedora you want to use:
cat /etc/os-release
```



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
    - poppler-utils: Command line utilities for converting PDF files
- Text/Graphics:
    - GraphicsMagick: ImageMagick fork
    - fzf: A command-line fuzzy finder written in Go
    - pandoc: Markup conversion tool
    - ripgrep: Line-oriented search tool

```bash
# Build Tools
#sudo dnf group install -y c-development development-tools

# General purpose utilities:
# 35 MB installed
sudo dnf install -y \
    btop \
    poppler-utils
    
# Text/Graphics
# 240 MB installed
sudo dnf install -y \
    GraphicsMagick \
    fzf \
    pandoc \
    ripgrep
```



## Data Tools: 

These are split up to make installation more modular.

- Duckdb
- MariaDB
- Postgres
- SQLite

```bash
# ---- DuckDB ----
# Depends on the iucar COPR repo:
# 195 MB installed
sudo dnf copr enable iucar/duckdb
sudo dnf install duckdb

# ---- MariaDB ----
#sudo dnf install -y mariadb

# ---- Postgres ----
# 8 MB isntalled
sudo dnf install -y postgresql

# ---- SQLite ----
sudo dnf install -y sqlite

```


## Programming Languages: 

These are split up to make installation more modular.

- Python: No introduction needed
- R: A language for data analysis and graphics

```bash

# ---- Python ----
# 59 MB isntalled
sudo dnf install -y ruff uv

# ---- R ----

# Required base installation
# 223 MB installed
sudo dnf copr enable -y iucar/cran
sudo dnf install -y R-CoprManager

# 406 MB installed
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

# Optional R things . . . . 

#sudo dnf install -y R-CRAN-learnr R-CRAN-swirl

# 6 MB installed
sudo dnf install -y R-CRAN-usethis 

# 458 KB installed
sudo dnf install -y R-CRAN-ggrepel

# 5 MB installed
sudo dnf install -y \
    R-CRAN-nanoparquet \
    R-CRAN-openxlsx

# 263 MB installed 
sudo dnf install -y \
    R-CRAN-plotly \
    R-CRAN-shiny \
    R-CRAN-radiant \
    R-CRAN-rsconnect

```



# GUI/Exported Apps

These are GUI applications installed in the distrobox which are then exported to
the host system. Duplication across tools is intentional in order to make this
as modular as possible.

They serve to access to the distrobox instance, in addition to the terminal.

- Emacs
- RStudio
- Positron: Not installed by default.
- Visual Studio Code

```bash
# 37 MB installed
sudo dnf install -y \
    adw-gtk3-theme \
    adwaita-fonts-all \
    cascadia-code-fonts \
    cascadia-code-nf-fonts
```

## Emacs

```bash

# sudo dnf install -y \
#     PackageKit-gtk3-module \
#     cmake \
#     emacs \
#     fd-find \
#     ghostscript \
#     poppler \
#     ripgrep \
#     tree-sitter-cli \
#     zeromq zeromq-devel
#
# distrobox-export --app emacs
```

## Positron

Not installed by default.

```bash
# sudo dnf copr enable -y iucar/posit-dev
# sudo dnf check-update
#sudo dnf install -y ark-kernel positron
#distrobox-export --app positron
```

## RStudio

```bash
# 2 GB installed
sudo dnf copr enable -y iucar/rstudio
sudo dnf install -y rstudio-desktop
distrobox-export --app rstudio
```

## VSCode

```bash
# sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
# sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
# 
# sudo dnf check-update
# sudo dnf install code
# distrobox-export --app code
```
