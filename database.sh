# ##############################################################################
# Database
#
# Sections:
# - Generic GUI Tools
# - Postgres
# - SQLite
# - SQL Server
# ##############################################################################



# ==============================================================================
# Generic GUI Tools
# ==============================================================================

# I like DBeaver, but I install it as part of Eclipse.
# http://dbeaver.jkiss.org/download/
#rpm --install ~/Downloads/dbeaver*



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
     unixODBC-gui-qt.x86_64

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
