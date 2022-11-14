# About

I run TimescaleDB (TDB) as my database of choice because it scales well for the kinds of projects I work on in my free time. It is very important to NOT install postgres and then layer TDB on top of it. Apparently, you need to do it all at once. IDK. That's what their documentation says.

## Install

```bash
sudo dnf install \
    pgaudit \
    pgcli \
    postgresql.x86_64 \
    timescaledb 
```

## Setup

Steps for configuring a Timescaledb system.

### Local Setup

Because TDB is just a Postgres extension, setup is "easy" but we have to make sure the extension can work.

Get it running locally for the postgres and andy users.

```bash
sudo postgresql-setup initdb # Or upgrade if that is what you need to do.
sudo systemctl enable postgresql
sudo systemctl start postgresql
```
In order for TDB to work, we have to load the extension. The file we are going
to edit is ONLY created after you run `initdb` so do this in the right order. To
load the extension, modify
`/var/lib/pgsql/data/postgresql.conf` as follows:

```
shared_preload_libraries = 'timescaledb'
```

And then restart postgres.

```bash
sudo systemctl restart postgresql
```

For more info on this, see here: [Installation RedHat](https://docs.timescale.com/install/latest/self-hosted/installation-redhat/#set-up-the-timescaledb-extension)

Now, let's get it working for myself:

```bash
sudo su postgres -c psql
```

```sql
CREATE database example;
\c example
CREATE EXTENSION IF NOT EXISTS timescaledb;
```

And to get myself up and running:

```bash
sudo -u postgres createuser --interactive -P andy

# As user andy, create myself a database.
createdb
```
### Remote Setup

Open up that firewall!!! The last time I did this, I got a warning that this was
already enabled, so that's "cool".

```bash
sudo firewall-cmd --permanent --add-port=5432/tcp
```

[This](https://docs.fedoraproject.org/en-US/quick-docs/firewalld/) can be
helpful if you get stuck on this step.


Tell postgres to listen for remote connections by editing
`sudo vi /var/lib/pgsql/data/postgresql.conf` as root.

```
# Change:
#listen_addresses = 'localhost'

# TO:
listen_addresses = '*'
```

And edit `sudo vi /var/lib/pgsql/data/pg_hba.conf` to look like:

```
# TYPE  DATABASE        USER            ADDRESS                 METHOD

# "local" is for Unix domain socket connections only
local   all             all                                     peer
# IPv4 local connections:
host    all             all             127.0.0.1/32            ident
host    all             all             0.0.0.0/0               md5
host    all             all             10.10.10.0/24           md5
# IPv6 local connections:
host    all             all             ::1/128                 ident
# Allow replication connections from localhost, by a user with the
# replication privilege.
local   replication     all                                     peer
host    replication     all             127.0.0.1/32            ident
host    replication     all             ::1/128                 ident
```

Remember to restart the service, or your settings won't stick:

```bash
sudo systemctl restart postgresql
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
