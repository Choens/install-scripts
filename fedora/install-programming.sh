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
# - Markup Languages
# - Python
#
# ##############################################################################



# ==============================================================================
# Analysis
# ==============================================================================

# CLI ---------------------------------------------------------------------
# This is BIG because it includes many texlive packages.
dnf install \
     R \
     R-java \
     R-RODBC

# Install RStudio:
# http://www.rstudio.com/ide/download/desktop
# Copy / paste this into command line and then let bash finish it.
#rpm --install ~/Downloads/rstudio

# Dev Stuff needed to compile useful R packages.
dnf install \
     curl.x86_64 \
     cyrus-sasl.x86_64 cyrus-sasl-devel.x86_64 \
     libcurl.x86_64 libcurl-devel.x86_64 \
     libjpeg-turbo.x86_64 libjpeg-turbo-devel.x86_64 \
     libxml2.x86_64 libxml2-devel.x86_64  \
     openssl-libs.x86_64 openssl-devel.x86_64



# ==============================================================================
# Build Essentials / CLI
# ==============================================================================

dnf install \
     automake \
     dos2unix.x86_64 \
     gcc gcc-c++.x86_64 \
     make.x86_64 \
     rpmdevtools



# ==============================================================================
# Database Connections and Tools
# ==============================================================================

# NOSQL ------------------------------------------------------------------------
#dnf install \
#     libmongo-client.x86_64 libmongo-client-devel.x86_64 \
#     mongo-java-driver.noarch
#     mongo-tools.x86_64

# Postrges & Other SQL ---------------------------------------------------------
# Removed pgadmin3, in order to install the BETA of pgadmin4 which looks awesome
dnf install \
    postgresql.x86_64 \
    postgresql-odbc.x86_64 \
    postgresql-jdbc.noarch \
    unixODBC-gui-qt.x86_64

# https://pgadmin.org/download/


# Front Ends -------------------------------------------------------------------
# It is hard to beat the beaver
# http://dbeaver.jkiss.org/download/
#rpm --install ~/Downloads/dbeaver

# ==============================================================================
# Editors / IDEs
# ==============================================================================

# Atom ------------------------------------------------------------------------
# Download RPM from: https://atom.io/
#dnf install lsb-core-noarch
#rpm --install ~/Downloads/atom.x86_64.rpm

# Eclipse ----------------------------------------------------------------------
#dnf install \
#     eclipse-anyedit.noarch \
#     eclipse-color-theme.noarch \
#     eclipse-dltk-mylyn.noarch \
#     eclipse-dltk-ruby.noarch \
#     eclipse-dltk.noarch \
#     eclipse-dtp.noarch \
#     eclipse-egit-github.noarch \
#     eclipse-egit-mylyn.noarch \
#     eclipse-manpage.noarch \
#     eclipse-mpc.noarch \
#     eclipse-mylyn-context-java.noarch \
#     eclipse-mylyn-docs-wikitext.noarch \
#     eclipse-mylyn-fedora-integration.noarch \
#     eclipse-mylyn-tasks-web.noarch \
#     eclipse-mylyn-versions-git.noarch \
#     eclipse-mylyn-versions.noarch \
#     eclipse-mylyn.noarch \
#     eclipse-pde.x86_64 \
#     eclipse-platform.x86_64 \
#     eclipse-pydev-mylyn.x86_64 \
#     eclipse-pydev.x86_64 \
#     eclipse-quickrex.noarch \
#     eclipse-remote.noarch \
#     eclipse-shelled.noarch \
#     eclipse-texlipse.noarch \
#     eclipse-tm-terminal.noarch \
#     eclipse-webtools-sourceediting.noarch \

## Followed by statet, dbeaver, 

# Emacs ------------------------------------------------------------------------
dnf install \
     emacs-auctex.noarch \
     emacs-auctex-doc.noarch \
     emacs-auto-complete.noarch \
     emacs-magit.noarch \
     emacs-ess.noarch \
     emacs-goodies.noarch \
     emacs.x86_64

# Gedit ------------------------------------------------------------------------
# It ain't glamorous, but it can be effective
dnf install gedit-plugin* gedit-latex*

# Other ------------------------------------------------------------------------
dnf install meld.noarch

# ==============================================================================
# Git
# ==============================================================================

# CLI --------------------------------------------------------------------------
dnf install \
     aspell-en.x86_64 \
     git.x86_64  \
     git-extras.noarch \
     git-ftp.noarch \
     tig.x86_64

# GUI --------------------------------------------------------------------------
dnf install \
     git-gui.noarch \
     gitg.x86_64 \
     gitk.noarch



# ==============================================================================
# Mark Up Languages
# ==============================================================================

# CLI ---------------------------------------------------------------------
sudo dnf install \
     linkchecker.x86_64 \
     pandoc.x86_64 \
     pandoc-citeproc.x86_64 \
     pandoc-pdf.x86_64  

# LaTeX ------------------------------------------------------------------------
# Because of the large number of packages installed with R, this is quick.

# CLI -----------------------------------------------------
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
     texlive-lipsum \
     texlive-morefloats.noarch 
     texlive-paper.noarch \
     texlive-pdftex.noarch \
     texlive-tabulary.noarch \
     texlive-texlive-en-doc.noarch \
     texlive-titlesec \
     texlive-tufte-latex \
     texlive-tex.noarch \
     texlive-titling.noarch \
     texlive-ulem.noarch \
     texlive-units

# GUI -----------------------------------------------------
#sudo dnf install \
#     texworks.x86_64



# ==============================================================================
# Node.js
# ==============================================================================
dnf install nodejs.x86_64

npm install -g bower 
npm install -g foundation-cli 
npm install -g gulp
npm install -g grunt



# ==============================================================================
# Python
# ==============================================================================

dnf install \
     emacs-pymacs.noarch \
     pychecker.noarch \
     pylint.noarch pylint-gui.noarch \
     python3-docs.noarch \
     python3-ipdb.noarch \
     python3-ipython-console.noarch \
     python3-ipython-gui.noarch \
     python3-ipython.noarch \
     python3-ipython-notebook.noarch \
     python3-ipython-sphinx.noarch \
     python3-numpy.x86_64 \
     python3-pandas.x86_64 \
     python3-reportlab.x86_64 \
     python3-scipy.x86_64 \
     python3-statsmodels.x86_64
     python-ropemode.noarch python-rope.noarch python-ropemacs.noarch

dnf install python3-jupyter_core.noarch

dnf install czmq.x86_64 czmq-devel.x86_64

## R Kernel
## https://github.com/IRkernel/IRkernel
## Getting the R Kernel installed is a little funky.
## From within R

install.packages(c('repr', 'IRdisplay', 'crayon', 'pbdZMQ', 'devtools'))
devtools::install_github('IRkernel/IRkernel')
IRkernel::installspec()  # to register the kernel in the current R installation

# ==============================================================================
# Ruby
# =============================================================================
sudo dnf install \
     rubygem-bundler.noarch \
     ruby.x86_64 ruby-devel.x86_64 ruby-irb.noarch \
     rubygems.noarch \
     rubygem-rdiscount.x86_64

# TODO: For 1st Friday, etc. I need to have working gemfiles.
gem install bigdecimal
gem install bundler
gem install jekyll
gem install jekyll-mentions
gem install jekyll-paginate
gem install json
gem install github-pages
gen install pigments
gem install posix-spawn
gem install rake
gem install rouge
gem install uri
gem install yajl


