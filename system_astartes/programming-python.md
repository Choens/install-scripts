# About

Simple python installation scripts. Includes instructions for installing python
and getting it set up for first time use.



# Install

```bash
# Tools
sudo dnf install -y \
    black \
    bpytop \
    conda.noarch \
    python3-bpython \
    python3-jedi  \
    python3-jupyter-console python3-jupyter-packaging \
    python3-qtconsole \
    python3-rope \
    visidata

sudo dnf install -y \
    python3-arviz python3-pymc3 \
    python3-bokeh \
    python3-jedi \
    python3-ipywidgets \
    python3-hypothesis+pandas \
    python3-nbconvert python3-nbformat \
    python3-notebook \
    python3-numpy \
    python3-pandas python3-pandas-datareader \
    python3-pingouin \
    python3-plotly \
    python3-poetry \
    python3-pyarrow \
    python3-scikit-learn python3-scipy \
    python3-seaborn.noarch \
    python3-snappy \
    python3-statsmodels \
	python3-sqlalchemy python3-sqlalchemy+postgresql_asyncpg.x86_64
    
# I try to keep this as minimal as I can.
pip install --upgrade DataProfiler debugpy polars
```
