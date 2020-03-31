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

# DBeaver - The best generic SQL client I can find on Linux.
# Download: http://dbeaver.jkiss.org/download/
sudo dnf install java-1.8.0-openjdk.x86_64
sudo rpm --install ~/Downloads/dbeaver*

sudo dnf install \
     perl-DBD-CSV perl-DBD-ODBC perl-DBD-SQLite \
     sqliteodbc \
     sqlsh
     


# ==============================================================================
# Mongo
# ==============================================================================

## Mongo is . . . odd. I haven't used this in a while.
#sudo dnf install \
#     libmongo-client.x86_64 libmongo-client-devel.x86_64 \
#     mongo-java-driver
#     mongo-tools



# ==============================================================================
# Postgres
# ==============================================================================

# sudo dnf install \
#      postgresql.x86_64 \
#      postgresql_autodoc

## DBeaver comes with its own JDBC drivers.
## Only necessary if you want to use another JDBC-based connection.
#sudo dnf install \
#    postgresql-jdbc



# ==============================================================================
# SQLite
# ==============================================================================

#sudo dnf install -y \
#     libspatialite.x86_64 \
#     spatialite-tools.x86_64 \
#     sqlcipher.x86_64



# ==============================================================================
# SQL Server
# ==============================================================================

sudo dnf install -y \
     freetds \
     jtds \
     unixODBC.x86_64

## DO I NEED THIS?
## Adds sqlcmd and bcp
#sudo curl https://packages.microsoft.com/config/rhel/7/prod.repo > /etc/yum.repos.d/msprod.repo

## Only necessary if you previously installed any of these tools
#sudo yum remove unixODBC-utf16 unixODBC-utf16-devel

## Completes installation
#sudo dnf install mssql-tools unixODBC-devel.x86_64
#sudo dnf check-update
#sudo dnf upgrade

#echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
#echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc


sqlsh
python3-social-auth-storage-sqlalchemy

