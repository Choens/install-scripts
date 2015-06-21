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
dnf install \
    R \
    R-java \
    R-RODBC

# Install RStudio:
# http://www.rstudio.com/ide/download/desktop



# ==============================================================================
# Build Essentials / CLI
# ==============================================================================

dnf install \
    automake \
    dos2unix.x86_64 \
    gcc gcc-c++.x86_64 \
    make.x86_64 \
    tmux.x86_64



# ==============================================================================
# Database Connections and Tools
# ==============================================================================

dnf install \
    pgadmin3.x86_64 \
    postgresql.x86_64 \
    postgresql-odbc.x86_64 \
    postgresql-jdbc.noarch \
    unixODBC-gui-qt.x86_64



# ==============================================================================
# Editors / IDEs
# ==============================================================================

# Editors ----------------------------------------------------------------------
dnf install \
    bluefish.x86_64 \
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
    meld.noarch \
    python-ropemacs.noarch



# ==============================================================================
# Git
# ==============================================================================

dnf install \
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
dnf install \
    discount.x86_64 \
    html2text.x86_64 \
    pandoc.x86_64 \
    pandoc-citeproc.x86_64 \
    pandoc-pdf.x86_64 \
     

??jekyll??

# LaTeX ------------------------------------------------------------------------
dnf install \
    emacs-common-ebib.noarch \
    texlive-apa.noarch \
    texlive-beamer.noarch \
    texlive-bibtex-bin.x86_64 texlive-bibtex-doc.noarch \
    texlive-chktex.noarch \
    texlive-droid.noarch \
    texlive-ecv.noarch \
    texlive-elpres.noarch \
    texlive-inconsolata-fonts.noarch \
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
# Python
# ==============================================================================

# CLI ---------------------------------------------------------------------
dnf install \
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

