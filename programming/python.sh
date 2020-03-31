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
sudo dnf remove -y \
     pychecker \
     python3-autopep8 \
     python3-rope \
     python3-autopep8 \
     python3-docs \
     python3-flake8 \
     python3-idle.x86_64 \
     python3-importmagic \
     python3-jedi \
     python3-pylint \
     python3-pymssql \
     python3-virtualenv \
     python3-zmq



# ==============================================================================
# Analytical/Jupyter
# ==============================================================================

## Complicated by the fact that jupyterlab is not yet in the Fedora repos.
sudo dnf remove \
     mssql-cli.x86_64 \
     python3-ipykernel python3-ipython \
     python3-jupyterlab-launcher  \
     python3-jupyter-client \
     python3-ipython \
     python3-metakernel python3-metakernel-bash \
     python3-nbconvert \
     python3-nbsphinx \
     python3-numpy \
     python3-pandas python3-pandas-datareader \
     python3-qtconsole \
     #python3-reportlab \
     python3-seaborn \
     python3-scipy \
     python3-statsmodels \
     python3-yapf \
     R-IRkernel \
     visidata


sudo dnf install \
     mssql-cli \
     visidata \

## If/when yapf makes it into Fedora, remove it from this list.
pip3 install --upgrade --user bokeh epc pivottablejs pweave
pip3 install --upgrade --user jupyter-sql jupyter-emacskeys jupyter-tools


ipython-sql
intake
intake-sql
sql-connectors
IPython-Dashboard
ipython-secrets
ipython-db
jupyter-datatables
jupyter-sphinx-theme
jupyter-vscode-server
panel


pandas-ext
pandas-mapper
pandas-sets
sklearn-pandas
pandas-lookup
pandas-ply
pandas-bamboo
pandas-ml
pandas-sql
pandas-bokeh
pandas-anaphora
pandas-mssql
gspread-pandas
pandas-datapackage-reader
tableschema-pandas
clean-pandas
google-pandas-load
workbenchdata-pandas
Pandas-Data-Exploration-Utility-Package
pandasql
birch


smartstats
PyStats
StatisticalAnalysis
inferi
PySummary
statlab
stattools
skdesign
stats
statsmodels
seaborn

gnuhealth-icd10
gnuhealth-icd10pcs
PyMedTermino

hccEncoding
hccpy

tables


mssql-scripter
cheesefactory-database

pytidyverse
Tidy


gsheetdf

Alembic
parade
dfply

