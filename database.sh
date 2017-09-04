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

sudo dnf install \
     libdbi-dbd-pgsql.x86_64 \
     postgresql.x86_64 \
     postgresql_autodoc

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
     sqlcipher.x86_64 \
     sqlitebrowser