# Build Tools =================================================================
sudo dnf group install "C Development Tools and Libraries" 



# Command Line Tools ==========================================================
sudo dnf install \
    dos2unix \
    htop \
    nnn \
    pandoc pandoc-citeproc \
    pwgen \
    ranger \
    ripgrep \
    tilix \
    the_silver_searcher
 
 
 
# Data ========================================================================
sudo dnf install \
    freetds freetds-devel.x86_64 \
    unixODBC.x86_64 unixODBC-devel.x86_64 unixODBC-gui-qt.x86_64



# GIT =========================================================================
sudo dnf install \
    git git-gui gitk \
    git-tools \
    gitg.x86_64 \
    rabbitvcs-cli rabbitvcs-nautilus \
    tig



# NODEJS ======================================================================
sudo dnf install nodejs.x86_64 npm.x86_64



# Python ======================================================================
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
    python3-statsmodels \
    python3-sqlalchemy \
    python3-wheel \
    visidata



# R ===========================================================================
sudo dnf install \
     cairo-devel \
     openssl-devel \
     R \
     R-DBI \
     R-DT \
     R-IRdisplay \
     R-IRkernel \
     R-RColorBrewer \
     R-RPostgres \
     R-RSQLite \
     R-broom \
     R-core-devel.x86_64 \
     R-dbplyr \
     R-dplyr.x86_64 \
     R-dtplyr \
     R-devel.x86_64 \
     R-devtools \
     R-ggplot2 \
     R-hunspell \
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

R -e 'install.packages(c("config", "flexdashboard", "ggiraph", "pins", "shinydashboard", "plotly", "pool", "tidyverse"))'

 
 # Editors ====================================================================
sudo dnf install \
    emacs emacs-terminal \
    gedit-plugins \
    gitg.x86_64 \
    kpcli \
    libtool \
    meld \
    neovim

flatpak install \
    app/com.visualstudio.code-oss/x86_64/stable
    io.dbeaver.DBeaverCommunity \
    net.bartkessels.getit




# No? - I think it might be easier to install all of this via emacs!
emacs-auctex emacs-auctex-doc \
    emacs-blacken \
    emacs-ess emacs-ess-doc \
    emacs-goodies \
    emacs-magit \
    emacs-slime \
    
# Review/research
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
