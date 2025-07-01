# About

# Tools

## Build Tools/LibrariesSorrty

```bash
sudo dnf group install "C Development Tools and Libraries"
sudo dnf install libtool
```


## Git

```bash
sudo dnf install \
    git \
    git-crypt \
    tig
```


# Database

```bash
sudo dnf install \
    litecli \
    pgcli \
    postgresql.x86_64 \
    sqlite
```

# Neovim

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
    python3-jedi \
    python3-jupyter-console python3-jupyter-packaging \
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
    python3-scikit-learn python3-scipy \
    python3-seaborn.noarch \
    python3-statsmodels \
	python3-sqlalchemy python3-sqlalchemy+postgresql_asyncpg.x86_64
    
# I try to keep this as minimal as I can.
pip install DataProfiler
```

## R

https://developer.fedoraproject.org/tech/languages/r/r-ide.html

```bash
sudo dnf install \
     cairo-devel \
     libcurl-devel \
     libgit2.x86_64 libgit2-devel.x86_64 \
     libsodium.x86_64 libsodium-devel.x86_64 \
     openssl-devel openssl-libs.x86_64 openssl1.1.x86_64 \
     R \
     R-IRdisplay R-IRkernel \
     sqlite \
     texlive-opensans.noarch texlive-latexcolors.noarch
```



I find it easier/more stable to install the majority of my packages from CRAN, not the Fedora repo. It also guarantees I'm using the most recent packages. And it gives my processor some exercise. On modern multi-core systems, it goes faster if you flex that power. That said, this still takes a while. The Fedora repo also lacks the metapackage `tidyverse` and _many_ of my exploratory scripts/class scripts start with `library(tidyverse)`, so that's a problem.

```R
p <- c(
    "R2html",
    "RPostgres",
    "colorout",
    "config",
    "flexdashboard",
    "ggiraph",
    "httpgd",
    "later",
    "pins",
    "rsconnect",
    "shiny",
    "shinydashboard",
    "plotly",
    "pool",
    "tidymodels",
    "tidyverse"
    )
install.packages(p, Ncpus = 4)
```
