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
# - Desktop
# - Editors / IDEs
# - Git
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
     r-doc-html \
     r-doc-info \
     r-recommended

sudo apt-get install \
     libcurl4-openssl-dev \
     openjdk-7-jdk
     
# Install RStudio:
# http://www.rstudio.com/ide/download/desktop
# TODO: automate this.


# ==============================================================================
# Build Essentials / CLI
# ==============================================================================

sudo apt-get install \
     build-essential \
     byobu \
     cdbs \
     checkinstall \
     curl \
     dos2unix \
     ffe \
     gcc \
     gdb \
     tmux \
     w3m



# ==============================================================================
# Database - Tools
# ==============================================================================

# Mongo ------------------------------------------------------------------------
sudo apt-get install mongodb-clients

# ODBC -------------------------------------------------------------------------
sudo apt-get install \
     libmyodbc \
     r-cran-rodbc \
     unixodbc \
     unixodbc-bin \
     unixodbc-dev

# Postgres ---------------------------------------------------------------------
sudo apt-get install pgadmin3 postgresql-client

# ==============================================================================
# Database - GUI
# ==============================================================================

# Dbeaver ----------------------------------------------------------------------
# Download .deb and install.
# http://dbeaver.jkiss.org/

# PGAdmin ----------------------------------------------------------------------
sudo apt-get install pgadmin3

# Tora -------------------------------------------------------------------------
sudo apt-get install \
     libqt4-sql-mysql \
     libqt4-sql-odbc \
     libqt4-sql-psql \
     tora



# ==============================================================================
# Desktop
# ==============================================================================

# META -------------------------------------------------------------------------

# Desktop ----------------------------------------------------------------------
sudo apt-get install \
     filezilla \
     gparted \
     kdiff3-qt \
     uget \



# ==============================================================================
# Editors / IDEs
# ==============================================================================

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

#sudo apt-get install qtcreator qtcreator-plugin-ubuntu

#sudo apt-get install codelite codelite-plugins

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
# Mark Up Languages
# ==============================================================================

# CLI ---------------------------------------------------------------------
sudo apt-get install pandoc

# HTML -------------------------------------------------------------------------
sudo apt-get install \
     bluefish bluefish-plugins \
     csstidy \
     html2text \
     jekyll \
     linkchecker linkchecker-gui \
     markdown \
     pandoc \
     pdf2htmlex \
     php5 \
     php-codesniffer \
     php5-tidy \
     tidy

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
