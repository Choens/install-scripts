# Database

## MSSQL

## Postgres

```bash
sudo dnf install pgaudit pgcli postgresql.x86_64 timescaledb

## Maybe:
sudo dnf install pgadmin4-httpd.x86_64
```

And now we need to set it up.

```bash
sudo postgresql-setup initdb # Or upgrade if that is what you need to do.
sudo systemctl enable postgresql
sudo systemctl start postgresql

# Firewall
# make it last after reboot
sudo firewall-cmd --permanent --add-port=5432/tcp
# change runtime configuration
sudo firewall-cmd --add-port=5432/tcp
```

Now, let's get it working for myself:

```bash
sudo -u postgres createuser --interactive
createdb
```

To access remotely

**/var/lib/pgsql/data/postgresql.conf:**
```
# Change:
listen_addresses = 'localhost'

# TO:
listen_addresses = '*'
```

**/var/lib/pgsql/data/pg_hba.conf:**
```
# TYPE    DATABASE        USER            ADDRESS                 METHOD
  host    all             all             127.0.0.1/32            md5
  host    all             all             ::1/128                 md5
  local   all             postgres                                peer
```

And, you need to add a row . . . I added it to my IPV4 settings.
With this, you will be able to connect to the database. Without this, you are stuck.
```
# TYPE    DATABASE        USER            ADDRESS                 METHOD
host      all             all             0.0.0.0/0               md5
```

Remember to restart the service, or your settings won't stick:

```bash
sudo systemctl stop postgresql
sudo systemctl start postgresql
```

# TImescale

Now, we can setup a database using Timescale:

```bash
sudo su postgres -c psql
```

This will log us in. Now execute:

```sql
CREATE database example;

\c example

CREATE EXTENSION IF NOT EXISTS timescaledb;

su postgres -c 'psql -d example'

-- Check that we have the timescale extension enabled:
-- It is called timescaledb
\dx
```

Reference:

- http://pgaudit.org
- http://www.timescale.com
- https://docs.timescale.com/install/latest/self-hosted/installation-redhat/#install-self-hosted-timescaledb-on-red-hat-based-systems

And, setup a local user:

```bash
## Interactive:
sudo -u postgres createuser --interactive

## OR not:
sudo -u postgres createuser -d -r -e -p andy


```

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


## Git

```bash
sudo dnf install \
    git \
    git-credential-libsecret \
    git-crypt \
    git-tools \
    tig

```