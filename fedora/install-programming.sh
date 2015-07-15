# ##############################################################################
# Programming
#
# Author: Andy Choens
#
# Collection of programming applications installed on Optimus.
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
# This is larger than it seems like it needs to be because it includes so many
# texlive packages, in addition to the R packages.
sudo dnf install \
    R \
    R-java \
    R-RODBC

# Install RStudio:
# http://www.rstudio.com/ide/download/desktop
sudo rpm --install ~/Downloads/rstudio-0.99.465-x86_64.rpm

# Dev Stuff needed to compile useful R packages.
sudo dnf install \
     curl.x86_64 \
     cyrus-sasl.x86_64 cyrus-sasl-devel.x86_64 \
     libcurl.x86_64 libcurl-devel.x86_64 \
     libjpeg-turbo.x86_64 libjpeg-turbo-devel.x86_64 \
     libxml2.x86_64 libxml2-devel.x86_64  \
     openssl-libs.x86_64 openssl-devel.x86_64



# ==============================================================================
# Build Essentials / CLI
# ==============================================================================

sudo dnf install \
    automake \
    dos2unix.x86_64 \
    gcc gcc-c++.x86_64 \
    make.x86_64 \
    tmux.x86_64



# ==============================================================================
# Database Connections and Tools
# ==============================================================================

sudo dnf install \
    libmongo-client.x86_64 libmongo-client-devel.x86_64 \
    mongo-java-driver.noarch \
    nodejs-mongodb.noarch \
    pgadmin3.x86_64 \
    postgresql.x86_64 \
    postgresql-odbc.x86_64 \
    postgresql-jdbc.noarch \
    python-pymongo.x86_64\
    unixODBC-gui-qt.x86_64



# ==============================================================================
# Editors / IDEs
# ==============================================================================

# Atom ------------------------------------------------------------------------
# Download RPM from: https://atom.io/

sudo dnf install lsb-core-noarch

sudo rpm --install ~/Downloads/atom.x86_64.rpm

# Emacs ------------------------------------------------------------------------
sudo dnf install \
    emacs-auctex.noarch \
    emacs-auctex-doc.noarch \
    emacs-auto-complete.noarch \
    emacs-magit.noarch \
    emacs-ess.noarch \
    emacs-git.noarch \
    emacs-goodies.noarch \
    emacs-global.noarch \
    emacs.x86_64 \
    global.x86_64 \
    python-ropemacs.noarch

# Other ------------------------------------------------------------------------
sudo dnf install \
    meld.noarch

# ==============================================================================
# Git
# ==============================================================================

sudo dnf install \
    gedit-plugin-git.x86_64 \
    git-email.noarch \
    git-extras.noarch \
    git-gui.noarch \
    git-ftp.noarch \
    gitg.x86_64 \
    git.x86_64  \
    gitk.noarch \
    tig.x86_64



# ==============================================================================
# Mark Up Languages
# ==============================================================================

# CLI ---------------------------------------------------------------------
sudo dnf install \
    discount.x86_64 \
    html2text.x86_64 \
    pandoc.x86_64 \
    pandoc-citeproc.x86_64 \
    pandoc-pdf.x86_64  

# LaTeX ------------------------------------------------------------------------
# Thanks to the large number of packages installed with R, this is quick.
sudo dnf install \
    emacs-common-ebib.noarch \
    texlive-apa.noarch \
    texlive-beamer.noarch \
    texlive-bibtex-bin.x86_64 texlive-bibtex-doc.noarch \
    texlive-chktex.noarch \
    texlive-droid.noarch \
    texlive-ecv.noarch \
    texlive-elpres.noarch \
    texlive-inconsolata.noarch \
    texlive-lacheck.noarch texlive-lacheck-bin.x86_64 \
    texlive-latexdiff-bin.noarch texlive-latexdiff-doc.noarch \
    texlive-latexdiff.noarch \
    texlive-luatex.noarch \
    texlive-paper.noarch \
    texlive-pdftex.noarch \
    texlive-tabulary.noarch \
    texlive-texlive-en-doc.noarch \
    texlive-tex.noarch \
    texlive-titling.noarch \
    texworks.x86_64



# ==============================================================================
# Node.js
# ==============================================================================
sudo dnf install \
    nodejs.x86_64
    


# ==============================================================================
# Python
# ==============================================================================
sudo dnf install \
    emacs-pymacs.noarch \
    pychecker.noarch \
    pylint.noarch pylint-gui.noarch \
    python3-docs.noarch \
    python3-ipython-console.noarch \
    python3-ipython-gui.noarch \
    python3-ipython.noarch \
    python3-ipython-notebook.noarch \
    python3-ipython-sphinx.noarch \
    python3-numpy.x86_64 \
    python3-pandas.x86_64 \
    python3-reportlab.x86_64 \
    python3-scipy.x86_64 \
    python-ropemode.noarch python-rope.noarch python-ropemacs.noarch



# ==============================================================================
# Ruby
# ==============================================================================
sudo dnf install \
    ruby.x86_64 ruby-devel.x86_64 \
    rubygems.noarch

sudo gem install jekyll
