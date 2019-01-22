# Postgres

Postgres with configured unaccent for Czech language

-----

[![Docker Stars](https://img.shields.io/docker/stars/dockette/postgres.svg?style=flat)](https://hub.docker.com/r/dockette/postgres/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/postgres.svg?style=flat)](https://hub.docker.com/r/dockette/postgres/)

## Discussion / Help

[![Join the chat](https://img.shields.io/gitter/room/dockette/dockette.svg?style=flat-square)](https://gitter.im/dockette/dockette?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

## Usage

```sh
docker build -t dockette-postgres .

docker run --rm -it -p 5432:5432 --name dockette-postgres dockette-postgres

```

## Credits

Thanks Ondrej Musil for: https://github.com/freaz/docker-postgres-czech-unaccent

## Tip

Without any docker volumes configured Postgres data will be lost after container stops.