#!/bin/bash
for DB in $(psql -t -c "SELECT datname FROM pg_database WHERE datname NOT IN ('postgres', 'template0')"); do
  psql -d $DB -c "CREATE EXTENSION IF NOT EXISTS \"$1\""
done
