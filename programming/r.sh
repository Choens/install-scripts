# ##############################################################################
# R
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
# CLI
# ==============================================================================

# This is BIG because it includes many texlive packages.
# I don't install very many packages from Fedora. I
# download from CRAN so I always have newer versions of the code.

sudo dnf install -y \
     R \
     R-DBI \
     R-java

<<<<<<< HEAD
## Annoying, but necessary for the time being.
## This can help with problems installing stringi.
R CMD INSTALL stringi_1.1.1.tar.gz --configure-args='--disable-pkg-config'
=======
# Additional packages you will need to compile Atom packages.
sudo dnf install -y \
     curl.x86_64 \
     cyrus-sasl.x86_64 cyrus-sasl-devel.x86_64 \
     gdal.x86_64 gdal-devel.x86_64 \
     geos.x86_64 geos-devel.x86_64 \
     libcurl.x86_64 libcurl-devel.x86_64 \
     libicu-devel.x86_64 \
     libjpeg-turbo.x86_64 libjpeg-turbo-devel.x86_64 \
     libxml2.x86_64 libxml2-devel.x86_64  \
     openssl-libs.x86_64 openssl-devel.x86_64 \
     proj-devel.x86_64 \
     proj-epsg.x86_64 \
     proj-nad.x86_64 \
     udunits2.x86_64 udunits2-devel.x86_64

# This was required to install tidyverse, but that no longer seems to be true!
# So, skip it unless you need it.
#R CMD INSTALL stringi_1.1.1.tar.gz --configure-args='--disable-pkg-config'
>>>>>>> b4c5932ad725e9456e782598e57691f3eb23a5dc



# ==============================================================================
# GUI
# ==============================================================================

# Install RStudio:
# http://www.rstudio.com/ide/download/desktop
# Unfortunately, the URL will have to be updated over time.
<<<<<<< HEAD
curl https://download1.rstudio.org/rstudio-1.0.153-x86_64.rpm
rpm --install ~/Downloads/rstudio
=======
sudo rpm --install ~/Downloads/rstudio*
>>>>>>> b4c5932ad725e9456e782598e57691f3eb23a5dc


# ==============================================================================
# Stupid Fixes
# ==============================================================================

<<<<<<< HEAD
sudo ln /usr/lib64/libgfortran.so.5 /usr/lib64/libgfortran.so.4
sudo ln /usr/lib64/libicui18n.so /usr/lib64/libicui18n.so.57

# ==============================================================================
## R Kernel:
## https://github.com/IRkernel/IRkernel
# ==============================================================================
## From within R:
install.packages(c('repr', 'IRdisplay', 'crayon', 'pbdZMQ', 'devtools'))
devtools::install_github('IRkernel/IRkernel')
IRkernel::installspec()  # to register the kernel in the current R installation
=======
# I may no longer need these?
#sudo ln /usr/lib64/libgfortran.so.5 /usr/lib64/libgfortran.so.4
#sudo ln /usr/lib64/libicui18n.so /usr/lib64/libicui18n.so.57
>>>>>>> b4c5932ad725e9456e782598e57691f3eb23a5dc
