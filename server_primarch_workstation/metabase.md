# About

# Postgres Setup

```sql
-- Because I'm bad, do this first . . . . 
ALTER DATABASE template1 REFRESH COLLATION version;

-- I like to have app users and databases with the same name.
create user app_metabase with password 'fwkn4823-094dj*';
create database  app_metabase owner = app_metabase;

```

# Metabase

```bash
podman pull docker.io/metabase/metabase:latest

podman run -d -p 3000:3000 \
  -e "MB_DB_TYPE=postgres" \
  -e "MB_DB_DBNAME=app_metabase" \
  -e "MB_DB_PORT=5432" \
  -e "MB_DB_USER=app_metabase" \
  -e "MB_DB_PASS=fwkn4823-094dj*" \
  -e "MB_DB_HOST=primarch" \
   --name metabase metabase/metabase

742c5f6d5ba3e227ba9efde05f1937ceb07a78c79e113514c538a26f16a16c73

```
