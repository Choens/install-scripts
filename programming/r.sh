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

sudo dnf install \
     R \
     R-DBI \
     R-java

## Annoying, but necessary for the time being.
## This can help with problems installing stringi.
R CMD INSTALL stringi_1.1.1.tar.gz --configure-args='--disable-pkg-config'



# ==============================================================================
# GUI
# ==============================================================================

# Install RStudio:
# http://www.rstudio.com/ide/download/desktop
# Unfortunately, the URL will have to be updated over time.
curl https://download1.rstudio.org/rstudio-1.0.153-x86_64.rpm
rpm --install ~/Downloads/rstudio


# ==============================================================================
# Stupid Fixes
# ==============================================================================

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
