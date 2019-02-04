# Postgres

Tuned PostgreSQL 10 docker image.

- configured unaccent for Czech language

-----

[![Docker Stars](https://img.shields.io/docker/stars/dockette/postgres.svg?style=flat)](https://hub.docker.com/r/dockette/postgres/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/postgres.svg?style=flat)](https://hub.docker.com/r/dockette/postgres/)

## Discussion / Help

[![Join the chat](https://img.shields.io/gitter/room/dockette/dockette.svg?style=flat-square)](https://gitter.im/dockette/dockette?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

## Version

- PostgreSQL 10

## Usage

```sh
docker run --rm -it -p 5432:5432 dockette/postgres:10
```

## Test

```sql
SELECT unaccent('Hôtel'); // Hotel
SELECT unaccent('Žluťoučký kůň'); // Zlutoucky kun 
```

## Credits

> Based on Ondrej Musil https://github.com/freaz/docker-postgres-czech-unaccent. Thank you.
