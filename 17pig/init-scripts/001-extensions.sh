#!/bin/bash

# Exit on subcommand errors
set -Eeuo pipefail

# Perform all actions as $POSTGRES_USER
export PGUSER="$POSTGRES_USER"

# Create extensions in template1 and $POSTGRES_DB
for DB in template1 "$POSTGRES_DB"; do
  echo "Creating extensions in $DB"
  psql -d "$DB" <<-'EOSQL'
    CREATE EXTENSION IF NOT EXISTS timescaledb;
    CREATE EXTENSION IF NOT EXISTS vector;
EOSQL
done

# pg_cron can only be installed in the postgres database
echo "Creating extension pg_cron in postgres"
psql -d postgres -c "CREATE EXTENSION IF NOT EXISTS pg_cron;"
