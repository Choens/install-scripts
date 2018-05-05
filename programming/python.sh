# ##############################################################################
# Python
#
# Sections:
# - Language
# - Analytical
# - Ipython/Jupyter
#
# ##############################################################################



# ==============================================================================
# Language
# ==============================================================================
sudo dnf install \
     emacs-pymacs \
     pychecker \
     python3-autopep8 \
     python3-rope python-ropemacs \
     python3-autopep8 \
     python3-docs \
     python3-flake8 \
     python3-importmagic \
     python3-jedi \
     python3-numpy.x86_64 \
     python3-pandas.x86_64 \
     python3-pylint \
     python3-pymssql \
     python3-reportlab.x86_64 \
     python3-seaborn \
     python3-scipy.x86_64 \
     python3-statsmodels.x86_64 \
     python3-virtualenv



# ==============================================================================
# Analytical/Jupyter
# ==============================================================================

## Complicated by the fact that jupyterlab is not yet in the Fedora repos.
# sudo dnf install \
#      python3-ipykernel \
#      python3-jupyter* \
#      python3-metakernel python3-metakernel-bash \
#      python3-nbconvert \
#      python3-nbsphinx.noarch \
#      python3-qtconsole

## If/when yapf makes it into Fedora, remove it from this list.
pip3 install --upgrade --user epc visidata yapf
pip3 install --upgrade --user bokeh  jupyter jupyter-app jupyter-lab orange3 seaborn
pip3 install --upgrade --user bokeh  orange3

## R Kernel:
## https://github.com/IRkernel/IRkernel
## Getting the R Kernel installed is a little funky.
## From within R
install.packages(c('repr', 'IRdisplay', 'crayon', 'pbdZMQ', 'devtools'))
devtools::install_github('IRkernel/IRkernel')
IRkernel::installspec()  # to register the kernel in the current R installation
