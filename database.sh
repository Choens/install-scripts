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
