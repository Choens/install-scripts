# ##############################################################################
# Programming
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
sudo dnf install \
     R \
     R-DBI \
     R-java \
     
sudo dnf install texlive-framed texlive-titling

sudo dnf install gdal.x86_64 gdal-devel.x86_64 proj-devel.x86_64 proj-epsg-4.9.2-2.fc24.x86_64 proj-nad-4.9.2-2.fc24.x86_64 libicu-devel.x86_64

sudo dnf install geos.x86_64 geos-devel.x86_64

sudo dnf install udunits2.x86_64 udunits2-devel.x86_64

## This can help with problems installing stringi.
R CMD INSTALL stringi_1.1.1.tar.gz --configure-args='--disable-pkg-config'

# Install RStudio:
# http://www.rstudio.com/ide/download/desktop
# Copy / paste this into command line and then let bash finish it.
#rpm --install ~/Downloads/rstudio

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
     rpmdevtools




# ==============================================================================
# Editors / IDEs
# ==============================================================================

# Atom ------------------------------------------------------------------------
# Download RPM from: https://atom.io/
#dnf install lsb-core-noarch
#rpm --install ~/Downloads/atom.x86_64.rpm

# Eclipse ----------------------------------------------------------------------
#dnf install \
#     eclipse-anyedit \
#     eclipse-color-theme \
#     eclipse-dltk-mylyn \
#     eclipse-dltk-ruby \
#     eclipse-dltk \
#     eclipse-dtp \
#     eclipse-egit-github \
#     eclipse-egit-mylyn \
#     eclipse-manpage \
#     eclipse-mpc \
#     eclipse-mylyn-context-java \
#     eclipse-mylyn-docs-wikitext \
#     eclipse-mylyn-fedora-integration \
#     eclipse-mylyn-tasks-web \
#     eclipse-mylyn-versions-git \
#     eclipse-mylyn-versions \
#     eclipse-mylyn \
#     eclipse-pde.x86_64 \
#     eclipse-platform.x86_64 \
#     eclipse-pydev-mylyn.x86_64 \
#     eclipse-pydev.x86_64 \
#     eclipse-quickrex \
#     eclipse-remote \
#     eclipse-shelled \
#     eclipse-texlipse \
#     eclipse-tm-terminal \
#     eclipse-webtools-sourceediting \

## Followed by statet, dbeaver, 

# Emacs ------------------------------------------------------------------------
sudo dnf install \
     emacs-auctex emacs-auctex-doc \
     emacs-auto-complete \
     emacs-ess emacs-ess-doc\
     emacs-goodies \
     emacs-magit \
     python-ropemacs \
     emacs-slime-el \
     emacs-yaml-mode \
     emacs.x86_64

# Gedit ------------------------------------------------------------------------
# It ain't glamorous, but it can be effective
# sudo dnf install gedit-plugin* gedit-latex*


# Visual Studio Code -----------------------------------------------------------
# https://code.visualstudio.com/docs/setup/linux#_rhel-fedora-and-centos-based-distributions
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
sudo dnf install code
         
# Other ------------------------------------------------------------------------
sudo dnf install meld

# ==============================================================================
# Git
# ==============================================================================

# CLI --------------------------------------------------------------------------
sudo dnf install \
     aspell-en.x86_64 \
     git.x86_64  \
     git-extras \
     git-ftp \
     tig.x86_64

# GUI --------------------------------------------------------------------------
sudo dnf install \
     git-gui \
     gitg.x86_64 \
     gitk \
     python3-rabbitvcs  \
     rabbitvcs-cli \
     rabbitvcs-nautilus



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
     emacs-common-ebib \
     fontawesome-fonts \
     texlive-apa \
     texlive-beamer \
     texlive-bibtex-bin.x86_64 texlive-bibtex-doc \
     texlive-chktex \
     texlive-ctablestack \
     texlive-datenumber \
     texlive-droid \
     texlive-ecv \
     texlive-elpres \
     texlive-fontawesome \
     texlive-inconsolata \
     texlive-lacheck texlive-lacheck-bin.x86_64 \
     texlive-latexdiff-bin texlive-latexdiff-doc \
     texlive-latexdiff \
     texlive-luatex \
     texlive-lipsum \
     texlive-morefloats \
     texlive-paper \
     texlive-pdftex \
     texlive-siunitx \
     texlive-tabulary \
     texlive-texlive-en-doc \
     texlive-titlesec \
     texlive-tufte-latex \
     texlive-tex \
     texlive-titling \
     texlive-ulem \
     texlive-units

# GUI -----------------------------------------------------
#sudo dnf install \
#     texworks.x86_64



# ==============================================================================
# Node.js
# ==============================================================================
dnf install nodejs.x86_64

sudo npm install -g bower 
sudo npm install -g foundation-cli 
sudo npm install -g gulp
sudo npm install -g grunt



# ==============================================================================
# Python
# ==============================================================================

sudo dnf install \
     emacs-pymacs \
     pychecker \
     python-rope python-ropemacs \
     python3-autopep8 \
     python3-docs \
     python3-flake8 \
     python3-importmagic \
     python3-jedi \
     python3-numpy.x86_64 \
     python3-pandas.x86_64 \
     python3-pylint \
     python3-reportlab.x86_64 \
     python3-scipy.x86_64 \
     python3-statsmodels.x86_64 \
     python3-virtualenv

sudo dnf install \
     python3-ipykernel \
     python3-metakernel-bash \
     python3-nbconvert \
     python3-qtconsole

## Jupyter Stuff
pip3 install --upgrade --user jupyter jupyter_kernel_gateway jupyterlab

## If yapf makes it into Fedora drop this.
pip3 install --upgrade --user epc yapf

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
     rubygem-bundler \
     ruby.x86_64 ruby-devel.x86_64 ruby-irb \
     rubygems \
     rubygem-rake \
     rubygem-rdiscount.x86_64

# TODO: For 1st Friday, etc. I need to have working gemfiles.
gem install bigdecimal
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


