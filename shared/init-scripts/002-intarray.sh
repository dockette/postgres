#!/bin/sh

set -e

# Perform all actions as $POSTGRES_USER
export PGUSER="$POSTGRES_USER"

# Create global extension
echo "Creating extension intarray globally"
"${psql[@]}" <<- 'EOSQL'
CREATE EXTENSION IF NOT EXISTS intarray;
EOSQL

# Create extension in template1 and $POSTGRES_DB
for DB in template1 "$POSTGRES_DB"; do
	echo "Creating extension intarray into $DB"
	"${psql[@]}" --dbname="$DB" <<-'EOSQL'
		CREATE EXTENSION IF NOT EXISTS intarray;
EOSQL
done
