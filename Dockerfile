FROM postgres:10

ENV LANG cs_CZ.utf8

COPY ./ext/unaccent/czech_unaccent.tar.gz /tmp
COPY ./init-scripts/* /docker-entrypoint-initdb.d/

RUN localedef -i cs_CZ -c -f UTF-8 -A /usr/share/locale/locale.alias cs_CZ.UTF-8 && \
    cd /tmp && tar xvzf czech_unaccent.tar.gz && \
    cp fulltext_dicts/* /usr/share/postgresql/10/tsearch_data && \
    rm -rf /tmp/*
