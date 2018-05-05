# ##############################################################################
# Database
#
# Sections:
# - Generic GUI Tools
# - Mongo
# - Postgres
# - SQLite
# ##############################################################################



# ==============================================================================
# Generic GUI Tools
# ==============================================================================

# I like DBeaver, but I install it as part of Eclipse.
# http://dbeaver.jkiss.org/download/
#rpm --install ~/Downloads/dbeaver*



# ==============================================================================
# Mongo
# ==============================================================================

## Mongo is . . . odd. I haven't used this in a while.
#sudo dnf install \
#     libmongo-client.x86_64 libmongo-client-devel.x86_64 \
#     mongo-java-driver
#     mongo-tools.x86_64



# ==============================================================================
# Postgres
# ==============================================================================

# sudo dnf install \
#      libdbi-dbd-pgsql.x86_64 \
#      postgresql.x86_64 \
#      postgresql_autodoc

## DBeaver comes with its own JDBC drivers.
## Only necessary if you want to use another JDBC-based connection.
#sudo dnf install \
#    postgresql-jdbc

# 
# https://pgadmin.org/download/
#sudo dnf install \
#     pgadmin3.x86_64



# ==============================================================================
# SQLite
# ==============================================================================

sudo dnf install \
     libdbi-dbd-sqlite.x86_64 \
     libspatialite.x86_64 \
     perl-DBD-SQLite.x86_64 perl-DateTime-Format-SQLite \
     spatialite-tools.x86_64 \
     sqlcipher.x86_64


# ==============================================================================
# SQL Server
# ==============================================================================

sudo dnf install \
     freetds.x86_64 \
     jtds.noarch \
     unixODB.x86_64

## Adds sqlcmd and bcp
sudo curl https://packages.microsoft.com/config/rhel/7/prod.repo > /etc/yum.repos.d/msprod.repo

## Only necessary if you previously installed any of these tools
#sudo yum remove unixODBC-utf16 unixODBC-utf16-devel

## Completes installation
sudo dnf install mssql-tools unixODBC-devel
sudo dnf check-update
sudo dnf upgrade

echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
