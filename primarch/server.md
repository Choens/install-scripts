TODO: Delete




## Apache Superset

Apache Superset:

- This is all from their website.
- Should only have to install cyrys-sasl-devel and openldap-devel.

```bash
## Globally installed
    sudo dnf install \
        cyrus-sasl-devel \
        gcc gcc-c++ \
        libffi-devel \
        openldap-devel \
        python3-devel python3-pip python3-wheel \
        openssl-devel

## Prepare the virtual environment.
mkdir ~/venv
python3 -m venv ~/venv/superset
. venv/superset/bin/activate

# Install Apache Superset
pip install apache-superset

# Setup Apache Superset Database
superset db upgrade

# Create an admin user in your metadata database (use `admin` as username to be able to load the examples)
$ export FLASK_APP=superset
superset fab create-admin

# Load some data to play with
superset load_examples

# Create default roles and permissions
superset init

# To start a development web server on port 8088, use -p to bind to another port
superset run -p 8088 --with-threads --reload --debugger



```



