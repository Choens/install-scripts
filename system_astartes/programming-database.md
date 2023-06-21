# About

Installation instructions for interacting with commonly used databases. 

# Database GUI Tools

R-RMariaDB.x86_64 : Database Interface and 'MariaDB' Driver
R-RSQLite.x86_64 : SQLite database interface for R
R-dbplyr.noarch : A 'dplyr' Back End for Databases
R-filehash.x86_64 : Simple Key-Value Database
R-odbc.x86_64 : Connect to ODBC Compatible Databases (using the DBI Interface)

appstream
\cdsclient.x86_64 : Tools to query databases at CDS

datalog.x86_64 : A Lightweight Deductive Database using Datalog

firebird.x86_64 : SQL relational database management system

golang-github-influxdata-flux-devel.noarch : Lightweight scripting language for
querying databases

ibm-data-db2.x86_64 : IBM DB2 database connectivity for Mono

Name           Description                                                                                                            Application ID                 Version    Branch Remotes
SQuirreL SQL … SQuirreL SQL Client is a GUI that allows you to view the structure of a JDBC compliant database, browse the data in t… net.sourceforge.squirrel_sql   4.5.1      stable flathub
DataGrip       IntelliJ-based IDE for databases and SQL                                                                               com.jetbrains.DataGrip         2023.1.1   stable flathub
Sequeler       Friendly SQL Client                                                                                                    com.github.alecaddd.sequeler   0.8.2      stable flathub
Queries        A workbench to interact with relational databases.                                                                     io.github.limads.Queries       0.1.5      stable flathub
DBeaver Commu… Universal Database Manager                                                                                             io.dbeaver.DBeaverCommunity    23.0.4     stable flathub
Beekeeper Stu… The SQL Editor and Database Manager Of Your Dreams                                                                     io.beekeeperstudio.Studio      3.9.8      stable flathub
sqliteodbc     Provides an ODBC Driver for SQLite3                                                                                    …d.KiCad.ODBCDriver.sqliteodbc            stable flathub
psqlodbc       Provides an ODBC Driver for PostgreSQL                                                                                 …cad.KiCad.ODBCDriver.psqlodbc            stable flathub
PostgreSQL Cl… PostgreSQL client for DBeaver Community                                                                                …DBeaverCommunity.Client.pgsql            stable flathub
DB Browser fo… DB Browser for SQLite is a light GUI editor for SQLite databases                                                       …g.sqlitebrowser.sqlitebrowser 3.12.2     stable flathub
ARX            ARX Data Anonymization Tool                                                                                            org.deidentifier.arx           v3.9.1     stable flathub
PyCharm-Profe… The most intelligent Python IDE                                                                                        …etbrains.PyCharm-Professional 2023.1.1   stable flathub
PyCharm-Commu… The most intelligent Python IDE                                                                                        …m.jetbrains.PyCharm-Community 2023.1     stable flathub
IntelliJ IDEA… Capable and Ergonomic Java IDE for Enterprise, Web and Mobile Development                                              …brains.IntelliJ-IDEA-Ultimate 2023.1.1   stable flathub
ldbfx          Visual database management tool                                                                                        cn.navclub.ldbfx               1.0.0      stable flathub
CherryTree     Hierarchical Note Taking                                                                                               net.giuspen.cherrytree         b'0.99.55' stable flathub
Pragha Music … Manage and listen your music                                                                                           …ub.pragha_music_player.pragha 1.3.99.1   stable flathub
AvaEmailArchi… Archiving and restoring emails from IMAP mailboxes                                                                     de.flinkebits.AvaEmailArchivar 20211119.1 stable flathub
Projectpad     Projectpad allows to manage secret credentials and server information 

# Database Specific Tooling

There is an emphasis here on CLIENT side setup.

## Access

mdbtools
python3-pymssql
opendbx-mssql.x86_64 : MSSQL backend - provides mssql support in opendbx
python3-sqlalchemy+mssql_pymssql.x86_64 : Metapackage for python3-sqlalchemy: mssql_pymssql extras
python3-sqlalchemy+mssql_pyodbc.x86_64 : Metapackage for python3-sqlalchemy: mssql_pyodbc extras
================================================= Name Matched: mssql =================================================
golang-github-denisenkom-mssqldb-devel.noarch : Microsoft SQL server driver written in Go language
pcp-pmda-mssql.x86_64 : Performance Co-Pilot (PCP) metrics for Microsoft SQL Server
python3-pymssql.x86_64 : DB-API interface to Microsoft SQL Server
tuned-profiles-mssql.noarch : Additional tuned profile(s) for MS SQL Serve
## MariaDB

### Client

```bash
sudo dnf install \
    mycli
```

### Server

mariadb-connect-engine
mariadb-backup
mariadb-oqgraph-engine
mariadb-pam
mariadb-rocksdb-engine
mariadb-s3-engine.x86_64
mariadb-server
mariadb-server-utils
mariadb-sphinx-engine
mariadb-test
mariadb
mariadb-gssapi-server
mariadb-server-galera
mysql-selinux.noarch
python3-asyncmy
python3-mysqlclient

dmlite-plugins-mysql
mysqltuner.noarch
opendbx?
poco-mysql.x86_64
preludedb-mysql
maatkit.noarch
mariadb-server-utils
mycli.noarch
mytop.noarc
phpMyAdmin.noarch
python3-asyncmy.x86_64

```bash
sudo systemctl enable mariadb
sudo systemctl disable mariadb

sudo systemctl start mariadb
sudo systemctl stop mariadb

sudo mysql_secure_installation
```

## SQLite

### Client

```bash
sudo dnf install \
    litecli \
    pgcli \
    sqlite
```

## Oracle

python3-cx-oracle.x86_64 : Python interface to Oracle
python3-oracledb.x86_64 : OracleDB Driver
tuned-profiles-oracle.noarch : Additional tuned profile(s) targeted to Oracle loads
=============================================== Summary Matched: oracle ===============================================
ocfs2-tools.i686 : Tools for managing the Oracle Cluster Filesystem 2
ocfs2-tools.x86_64 : Tools for managing the Oracle Cluster Filesystem 2
orafce.x86_64 : Implementation of some Oracle functions into PostgreSQL
perl-Convert-NLS_DATE_FORMAT.noarch : Convert Oracle NLS_DATE_FORMAT <-> strftime Format Strings
python3-berkeleydb.i686 : Python bindings for Oracle Berkeley DB
python3-berkeleydb.x86_64 : Python bindings for Oracle Berkeley DB
python3-berkeleydb-devel.i686 : Python bindings for Oracle Berkeley DB
python3-berkeleydb-devel.x86_64 : Python bindings for Oracle Berkeley DB

## Postgres

### Client

R-RPostgres.x86_64
```bash
sudo dnf install \
    pgcli 
```

## SQL Server

### Client

```bash
sudo dnf install \
    litecli \
    mycli \
    pgcli \
    sqlite
```

