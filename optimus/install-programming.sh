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

tryton

google-noto-mono-fonts.noarch : Mono font
google-noto-sans-fonts.noarch : Sans font
google-droid-sans-fonts.noarch : A humanist sans serif typeface
google-noto-serif-fonts.noarch : Serif font
google-noto-fonts-common.noarch : Common files for Noto fonts
google-droid-serif-fonts.noarch : A contemporary serif typeface
google-droid-sans-mono-fonts.noarch : A humanist monospace sans serif typeface
grive2.x86_64
protobuf-emacs-el.noarch
fedora-user-agent-chrome.noarch

nuvola-app-amazon-cloud-player.noarch
clamz.x86_64 : Amazon Downloader
glacier-cli.noarch
s3cmd.noarch
python3-boto.noarch
python-postman.noarch
fuse-s3fs.noarch
sendKindle.noarch
acd_cli.noarch

python-dopy.noarch

WALinuxAgent.noarch

# ==============================================================================
# Analysis
# ==============================================================================

# CLI ---------------------------------------------------------------------
# This is BIG because it includes many texlive packages.
sudo dnf install \
     libdbi-dbd-pgsql.x86_64 libdbi-dbd-sqlite.x86_64 \
     R \
     R-DBI \
     R-java \
     
sudo dnf install texlive-framed.noarch texlive-titling.noarch

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
# Database Connections and Tools
# ==============================================================================

# NOSQL ------------------------------------------------------------------------
#dnf install \
#     libmongo-client.x86_64 libmongo-client-devel.x86_64 \
#     mongo-java-driver.noarch
#     mongo-tools.x86_64

# Postrges & Other SQL ---------------------------------------------------------
# Removed pgadmin3, in order to install the BETA of pgadmin4 which looks awesome
sudo dnf install \
    libdbi-dbd-pgsql.x86_64 \
    postgresql.x86_64 \
    postgresql-jdbc.noarch



# https://pgadmin.org/download/
#sudo dnf install \
#     pgadmin3.x86_64

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
sudo dnf install \
     emacs-auctex.noarch emacs-auctex-doc.noarch \
     emacs-auto-complete.noarch \
     emacs-ess.noarch emacs-ess-doc.noarch\
     emacs-goodies.noarch \
     emacs-magit.noarch \
     python-ropemacs.noarch \
     emacs-slime-el.noarch \
     emacs-yaml-mode.noarch \
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
sudo dnf install meld.noarch

# ==============================================================================
# Git
# ==============================================================================

# CLI --------------------------------------------------------------------------
sudo dnf install \
     aspell-en.x86_64 \
     git.x86_64  \
     git-extras.noarch \
     git-ftp.noarch \
     tig.x86_64

# GUI --------------------------------------------------------------------------
sudo dnf install \
     git-gui.noarch \
     gitg.x86_64 \
     gitk.noarch \
     python3-rabbitvcs.noarch  \
     rabbitvcs-cli.noarch \
     rabbitvcs-nautilus.noarch



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
     fontawesome-fonts.noarch \
     texlive-apa.noarch \
     texlive-beamer.noarch \
     texlive-bibtex-bin.x86_64 texlive-bibtex-doc.noarch \
     texlive-chktex.noarch \
     texlive-ctablestack.noarch \
     texlive-datenumber.noarch \
     texlive-droid.noarch \
     texlive-ecv.noarch \
     texlive-elpres.noarch \
     texlive-fontawesome.noarch \
     texlive-inconsolata.noarch \
     texlive-lacheck.noarch texlive-lacheck-bin.x86_64 \
     texlive-latexdiff-bin.noarch texlive-latexdiff-doc.noarch \
     texlive-latexdiff.noarch \
     texlive-luatex.noarch \
     texlive-lipsum \
     texlive-morefloats.noarch \
     texlive-paper.noarch \
     texlive-pdftex.noarch \
     texlive-siunitx.noarch \
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

sudo npm install -g bower 
sudo npm install -g foundation-cli 
sudo npm install -g gulp
sudo npm install -g grunt



# ==============================================================================
# Python
# ==============================================================================

sudo dnf install \
     emacs-pymacs.noarch \
     pychecker.noarch \
     python-rope.noarch python-ropemacs.noarch \
     python3-autopep8.noarch \
     python3-docs.noarch \
     python3-flake8.noarch \
     python3-importmagic.noarch \
     python3-jedi.noarch \
     python3-numpy.x86_64 \
     python3-pandas.x86_64 \
     python3-pylint.noarch \
     python3-reportlab.x86_64 \
     python3-scipy.x86_64 \
     python3-statsmodels.x86_64 \
     python3-virtualenv.noarch

sudo dnf install \
     python3-ipykernel.noarch \
     python3-metakernel-bash.noarch \
     python3-nbconvert.noarch \
     python3-qtconsole.noarch

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
     rubygem-bundler.noarch \
     ruby.x86_64 ruby-devel.x86_64 ruby-irb.noarch \
     rubygems.noarch \
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


