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
sudo dnf install -y \
     emacs-pymacs \
     pychecker \
     python3-autopep8 \
     python3-rope python-ropemacs \
     python3-autopep8 \
     python3-docs \
     python3-flake8 \
     python3-importmagic \
     python3-jedi \
     python3-pylint \
<<<<<<< HEAD
     python3-pymssql \
=======
>>>>>>> b4c5932ad725e9456e782598e57691f3eb23a5dc
     python3-virtualenv




# ==============================================================================
# Analytical/Jupyter
# ==============================================================================

## Complicated by the fact that jupyterlab is not yet in the Fedora repos.
<<<<<<< HEAD
sudo dnf install \
    python3-pandas* \
    python3-ipykernel python3-ipython \
    python3-jupyterlab-launcher.noarch  \
    python3-metakernel python3-metakernel-bash \
    python3-nbconvert \
    python3-nbsphinx.noarch \
    python3-numpy \
    python3-pandas \
    python3-reportlab \
    python3-seaborn \
    python3-scipy \
    python3-statsmodels

## If/when yapf makes it into Fedora, remove it from this list.
pip3 install --upgrade --user bokeh epc visidata yapf
#pip3 install --upgrade --user bokeh  jupyter jupyter-app jupyterlab  jupyterlab-launcher jupyterlab_templates jupyterlab-widgets seaborn
pip3 install --upgrade --user orange3
=======
sudo dnf install -y \
     python3-ipykernel \
     python3-jupyterlab-launcher \
     python3-metakernel python3-metakernel-bash \
     python3-nbconvert \
     python3-nbsphinx.noarch \
     python3-numpy \
     python3-pandas* \
     python3-pymssql \
     python3-reportlab \
     python3-seaborn \
     python3-scipy \
     python3-statsmodels \
     python3-qtconsole.noarch

## If/when yapf makes it into Fedora, remove it from this list.
pip3 install --upgrade --user epc visidata yapf
pip3 install --upgrade --user bokeh jupyterlab  jupyterlab-launcher jupyterlab_templates jupyterlab-widgets
pip3 install --upgrade --user orange3

## R Kernel:
## https://github.com/IRkernel/IRkernel
## Getting the R Kernel installed is a little funky.
## From within R
install.packages(c('repr', 'IRdisplay', 'crayon', 'pbdZMQ', 'devtools'))
devtools::install_github('IRkernel/IRkernel')
IRkernel::installspec()  # to register the kernel in the current R installation
>>>>>>> b4c5932ad725e9456e782598e57691f3eb23a5dc
