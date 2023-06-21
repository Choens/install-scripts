# About

Simple R installation scripts. Includes instructions for installing R and
getting it set up for first time use.

Installing R on Linux is EASY. All you _must_ do is `sudo dnf install R` and you are _"done"_. However, having a system set up to then be able to effectively compile packages from CRAN is NOT simple. The following will give you a solid basic install capable of interacting with Jupyter notebooks, perform basic analyses, etc.

# Pre-requisites

```bash
sudo dnf group install "C Development Tools and Libraries"
sudo dnf install libtool
```



# Install

- proj and udunits are for GIS work
- stringi is for, everything.
- libicu71 seems to be a Fedora 38 thing

```bash
# A basic R setup. I would recommend installing the "Basics" packages below.
sudo dnf install \
    gdal gdal-devel \
    libicu libicu71 libicu-devel \
    proj proj-devel \
    R R-devel \
    R-core-devel R-Rcpp-devel R-markdown-devel \
    R-RMariaDB.x86_64 \
    R-stringi-devel R-vctrs-devel R-xml2-devel R-zoo-devel \
    R-IRdisplay R-IRkernel \
    sqlite \
    udunits2-devel
```

Install these to connect to a postgres database:

```bash
## Only needed if you are going to install the postgres database packages:
sudo dnf install libpq.x86_64 libpq-devel
```

If you want to use the built-in version of RStudio, run this. If you want to install frm the RStudio website, see below.

```bash
sudo dnf install rstudio-desktop
```

If you want to use Visual Studio Code as a front-end to R, I recommend replacing the R cli tool with Radian.

```bash
pip install --upgrade radian
```

# Packages

I find it easier/more stable to install the majority of my packages from CRAN,
not the Fedora repo. It also guarantees I'm using the most recent packages. And
it gives my processor some exercise. On modern multi-core systems, it goes
faster if you flex that power. That said, this still takes a while. The Fedora
repo also lacks the metapackage `tidyverse` and _many_ of my exploratory
scripts/class scripts start with `library(tidyverse)`, so that's a problem.

Open R and install the following packages in an interactive session.

```R
# Basics ----------------
# config: 
# languageserver: 
# pacman: 
# pins:
# rlang: 
# tidyverse: 
p <- c(
    "config",
    "languageserver",
    "pacman",
    "pins",
    "rlang",
    "tidyverse")
install.packages(p, Ncpus = 4)

# rio: Convenient import/output functions.
install.packages("rio", Ncpus = 4, dependencies = TRUE)


# Interoperability with Microsoft office applications.
# R2HTML
# flextable: 
# mschart: 
# officer: 
# openxlsx: 
# rvg: 
p <- c(
    "R2HTML",
    "flextable",
    "mschart",
    "officer",
    "openxlsx",
    "rvg"
install.packages(p, Ncpus = 4)


# Database ----------------
# This section is unusual in that it is broken up into two optional group sets.

# Maria Database
# RMariaDB: 
# pool: 
p <- c("RMariaDB", "pool")
install.packages(p, Ncpus = 4)

# Postgres Database
# RPostgres: 
# pool: 
# Requires libpq and libpq-devel
p <- c("RPostgres", "pool")
install.packages(p, Ncpus = 4)


# GIS

# Modeling/ML ----------------
# parsnip, workflows, infer, recipes
p <- c("modelr", "tidymodels", "vetiver")
install.packages(p, Ncpus = 4)

# Shiny ----------------
p <- c(
    "flexdashboard",
    "httpgd",
    "later",
    "rsconnect",
    "shiny",
    "shinydashboard",
    "plotly")
install.packages(p, Ncpus = 4)
```

And, now we need to install/setup Quarto. And that isn't as easy as it should be
on Fedora. Go [here](https://quarto.org/docs/get-started/) to download the most
recent version of the Quarto binary tarball.

The version will, hopefully, advance.

```bash
wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.3.336/quarto-1.3.336-linux-amd64.tar.gz

mkdir ~/opt
tar -C ~/opt -xvzf quarto-1.3.336-linux-amd64.tar.gz

mkdir ~/bin
ln -s ~/opt/quarto-1.3.336/bin/quarto ~/bin/quarto
```

To test that it works:

```bash
quarto check
```
