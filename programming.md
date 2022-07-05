# About

Tools useful for programming. I really only use these lists on desktops/laptops.
For language/library installation on servers, see server.md.

# Accessories

Collection of git and multi-lingual tools I tend to install.

```bash
sudo dnf install tilix 

sudo dnf remove gedit* gnome-terminal*

flatpak install \
    org.gaphor.Gaphor \
    ## TODO: Evaluate Kooha alternatives.
    io.github.seadve.Kooha \
    org.gnome.design.Lorem \
    com.belmoussaoui.Obfuscate \
    org.gnome.design.Palette \
    org.kryogenix.Pick \
    org.gnome.Solanum \
    io.github.lainsce.Emulsion \
    net.bartkessels.getit \
    com.uploadedlobster.peek
    
```



## Build Tools/Libraries

```bash
sudo dnf group install "C Development Tools and Libraries"

sudo dnf install libtool
```



# Database

```bash
flatpak install \
    #io.dbeaver.DBeaverCommunity \
    com.github.alecaddd.sequeler
```

## MSSQL

We used MSSQL at Acuitas. I'm not using MSSQL right now, but I kept this for reference.

```bash
sudo dnf install \
    freetds freetds-devel.x86_64 \
    unixODBC.x86_64 unixODBC-devel.x86_64
```

## Postgres

```bash

# TODO: Evaluate use of odbc with postgres.

# Basics:
sudo dnf install \
    pgcli \
    postgresql.x86_64 \
    R-RPostgres \
    python3-postgresql

# And the rest of it:
sudo dnf install \
    libreoffice-postgresql \
    pgadmin4 \
    pgmodeler
```

# Editors

```bash
# Editors ====================================================================
sudo dnf install \
    # Hard to believe I've commented emacs out, right?
    #emacs \
    
     \
    libtree-sitter.x86_64 \
    aspell.x86_64 aspell-en \
    hunspell.x86_64 hunspell-en-US hunspell-en \
    neovim neovim-qt python3-neovim \
    ripgrep \
    the_silver_searcher

#flatpak install \
#    io.dbeaver.DBeaverCommunity


```bash
## TODO: Improve my VS Code instructions.
## Because this doesn't actually work . . . . 
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
dnf check-update
sudo dnf install code
```

# Git

```bash
sudo dnf install \
    git \
    git-credential-libsecret \
    git-crypt \
    gitg.x86_64 \
    git-tools \
    meld \
    rabbitvcs-cli rabbitvcs-nautilus \
    tig

flatpak install \
    re.sonny.Commit \
    io.github.shiftey.Desktop
```

# Languages

## Nodejs

```bash
sudo dnf install nodejs.x86_64 npm.x86_64
```

## Python

```bash
sudo dnf install -y \
    black \
    python3-arviz python3-pymc3 \ # Bayesian analytics
    python3-bokeh \ 
    python3-Cython.x86_64 \
    python3-jedi \
    python3-jupyter-console python3-jupyter-packaging \
    python3-ipywidgets \
    python3-hypothesis+pandas \
    python3-nbconvert python3-nbformat \
    python3-notebook \
    python3-numpy \
    python3-pandas python3-pandas-datareader \
    python3-pingouin \ # Stats on pandas
    python3-plotly \
    #python3-pymssql \
    python3-qtconsole \
    python3-rope \
    python3-setuptools python3-setuptools_scm \
    python3-scikit-learn python3-scipy \
    python3-spyder.noarch python3-spyder-kernels.noarch python3-pyls-spyder.noarch \
    python3-statsmodels \ # Inferential stats
	python3-sqlalchemy+postgresql_asyncpg.x86_64 \
    python3-sqlalchemy \
    python3-venv \
    python3-wheel \
    visidata

# I try to keep this as minimal as I can.
pip install DataProfiler jupyterlab
```

## R

```bash
sudo dnf install \
     cairo-devel \
     libcurl-devel \
     libgit2.x86_64 libgit2-devel.x86_64 \
     libsodium.x86_64 libsodium-devel.x86_64 \
     openssl-devel \
     R \
     R-DBI \
     R-DT \
     R-IRdisplay R-IRkernel \
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
     R-lintr \
     R-lubridate.x86_64 \
     R-markdown-devel.x86_64 \
     #R-odbc.x86_64 \
     R-openssl.x86_64 \
     R-purrr.x86_64 \
     R-Rcpp-devel.x86_64 \
     R-readr.x86_64 \
     R-readxl.x86_64 \
     R-rematch2 \
     R-rlang.x86_64 \
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

sudo dnf install texlive-opensans.noarch texlive-latexcolors.noarch

R -e 'install.packages(c("colorout", "config", "flexdashboard", "ggiraph", "httpgd", "R2html", "later", "pins", "rsconnect", "shiny", "shinydashboard", "plotly", "pool", "tidymodels", "tidyverse"))'

# Primarily useful if you plan on using VSC.
pip install radian
```