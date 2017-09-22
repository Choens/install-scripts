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
     python-rope python-ropemacs \
     python3-autopep8 \
     python3-docs \
     python3-flake8 \
     python3-importmagic \
     python3-ipykernel \
     python3-jedi \
     python3-jupyter* \
     python3-metakernel python3-metakernel-bash \
     python3-nbconvert \
     python3-nbsphinx.noarch \
     python3-numpy.x86_64 \
     python3-pandas.x86_64 \
     python3-pylint \
     python3-qtconsole
     python3-reportlab.x86_64 \
     python3-scipy.x86_64 \
     python3-spyder \
     python3-statsmodels.x86_64 \
     python3-virtualenv


## Jupyter Lab!
pip3 install --upgrade --user jupyterlab

## If yapf makes it into Fedora drop this.
pip3 install --upgrade --user epc yapf


