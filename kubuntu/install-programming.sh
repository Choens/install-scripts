# ##############################################################################
# Desktop Applications
#
# Author: Andy Choens
#
# Collection of programming applications isntalled on Optimus.
#
# Sections
# - Analysis
# - Build Essentials / CLI
# - Databases
# - Editors / IDEs
# - Git
# - KDE
# - Markup Languages
# - Python
#
# ##############################################################################



# ==============================================================================
# Analysis
# ==============================================================================

# CLI ---------------------------------------------------------------------
sudo apt-get install \
    r-base-dev \
    r-base-html \
    r-cran-amelia \
    r-doc-html \
    r-doc-info \
    r-recommended

# Install RStudio:
# http://www.rstudio.com/ide/download/desktop



# ==============================================================================
# Build Essentials / CLI
# ==============================================================================

sudo apt-get install \
    build-essential \
    cdbs \
    checkinstall \
    curl \
    dos2unix \
    ffe \
    gcc \
    gdb \
    tmux



# ==============================================================================
# Databases
# ==============================================================================

# Mongo ------------------------------------------------------------------------
sudo apt-get install mongodb-clients

# MySQL ----------------------------------------------------------------------
sudo apt-get install mysql-client mysql-utilities

# ODBC -------------------------------------------------------------------------
sudo apt-get install \
    libmyodbc \
    r-cran-rodbc \
    unixodbc \
    unixodbc-bin \
    unixodbc-dev

# Tora -------------------------------------------------------------------------
sudo apt-get install \
    libqt4-sql-mysql \
    libqt4-sql-odbc \
    tora



# ==============================================================================
# Editors / IDEs
    ==============================================================================

# Emacs ------------------------------------------------------------------------
sudo apt-get install \
    auctex \
    auto-complete-el \
    emacs-chess \
    emacs-goodies-el \
    emacs24 \
    ess \
    exuberant-ctags \
    git-el \
    magit \
    python-mode \
    python-ropemacs

# KDevelop ---------------------------------------------------------------------
sudo apt-get install kdevelop kdevelop-php kdevelop-php-docs ksshaskpass



# ==============================================================================
# Git
# ==============================================================================

# CLI ---------------------------------------------------------------------
sudo apt-get install \
    git \
    git-doc \
    git-extras \
    git-ftp \
    git-man \
    git-svn \
    git-man \
    tig

# Desktop ----------------------------------------------------------------------
sudo apt-get install git-cola git-gui gitk python-pyinotify



# ==============================================================================
# KDE
# ==============================================================================

# META -------------------------------------------------------------------------
sudo apt-get install \
    kdewebdev \
    kdesdk-dolphin-plugins \
    kdesdk-kio-plugins \
    kdesdk-scripts \
    vokoscreen

# Desktop ----------------------------------------------------------------------
sudo apt-get install kdiff3 krename krusader



# ==============================================================================
# Mark Up Languages
# ==============================================================================

# CLI ---------------------------------------------------------------------
sudo apt-get install html2text jekyll markdown pandoc pdf2htmlex

# LaTeX ------------------------------------------------------------------------
sudo apt-get install \
    lacheck \
    latexdiff \
    latex-beamer \
    texlive-latex-extra \
    texlive-latex-recommended \
    texlive-luatex \
    texmaker



# ==============================================================================
# Python
# ==============================================================================

# CLI ---------------------------------------------------------------------
sudo apt-get install \
    bicyclerepair \
    ipython-doc \
    ipython3 \
    ipython3-qtconsole \
    ipython3-notebook \
    pychecker \
    pylint \
    pymacs \
    pyp \
    python3-examples \
    python3-numpy \
    python3-pandas \
    python-reportlab \
    python-rope \
    python3-scipy \
    python3-doc
