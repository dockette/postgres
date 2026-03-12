#!/bin/bash

set -e

# Perform all actions as $POSTGRES_USER
export PGUSER="$POSTGRES_USER"

# Create extension in template1 and $POSTGRES_DB
for DB in template1 "$POSTGRES_DB"; do
	echo "Creating extension pg_cron into $DB"
	"${psql[@]}" --dbname="$DB" <<-'EOSQL'
		CREATE EXTENSION IF NOT EXISTS pg_cron;
EOSQL
done

