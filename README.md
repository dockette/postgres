# Postgres

Tuned PostgreSQL 10/11/12/13 docker image.

- extensions unaccent, intarray
- configured czech language
- 
-----

[![Docker Stars](https://img.shields.io/docker/stars/dockette/postgres.svg?style=flat)](https://hub.docker.com/r/dockette/postgres/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/postgres.svg?style=flat)](https://hub.docker.com/r/dockette/postgres/)

## Discussion / Help

[![Join the chat](https://img.shields.io/gitter/room/dockette/dockette.svg?style=flat-square)](https://gitter.im/dockette/dockette?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

## Versions

- PostgreSQL 10/11/12/13

## Usage

```sh
docker run --rm -it -p 5432:5432 dockette/postgres:13
docker run --rm -it -p 5432:5432 dockette/postgres:12
docker run --rm -it -p 5432:5432 dockette/postgres:11
docker run --rm -it -p 5432:5432 dockette/postgres:10
```

## Test

```sql
SELECT to_tsvector('czech'::regconfig, 'test'); 
SELECT unaccent('Hôtel'); // Hotel
SELECT unaccent('Žluťoučký kůň'); // Zlutoucky kun 
```

## Resources

Thank you for inspiration.

- https://github.com/char0n/postgresql-czech-fulltext
- https://github.com/tjelen/postgres-tsearch-czech
- https://github.com/freaz/docker-postgres-czech-unaccent

Other resources.

- https://postgres.cz/wiki/Instalace_PostgreSQL#Instalace_Fulltextu