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
     python3-pylint \
     python3-pymssql \
     python3-virtualenv



# ==============================================================================
# Analytical/Jupyter
# ==============================================================================

## Complicated by the fact that jupyterlab is not yet in the Fedora repos.
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
