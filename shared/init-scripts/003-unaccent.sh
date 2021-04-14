#!/bin/sh

set -e

# Perform all actions as $POSTGRES_USER
export PGUSER="$POSTGRES_USER"

# Create global extension
echo "Creating extension unaccent globally"
"${psql[@]}" <<- 'EOSQL'
CREATE EXTENSION IF NOT EXISTS unaccent;
EOSQL

# Create extension in template1 and $POSTGRES_DB
for DB in template1 "$POSTGRES_DB"; do
	echo "Creating extension unaccent into $DB"
	"${psql[@]}" --dbname="$DB" <<-'EOSQL'
		CREATE EXTENSION IF NOT EXISTS unaccent;
EOSQL
done
