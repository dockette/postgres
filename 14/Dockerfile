FROM postgres:14

ENV LC_ALL=cs_CZ.UTF-8
ENV LANG=cs_CZ.UTF-8
ENV LANGUAGE=cs_CZ.UTF-8
ENV TZ=Europe/Prague
ENV POSTGRES_VERSION=14

COPY ./shared/misc/czech /usr/share/postgresql/${POSTGRES_VERSION}/tsearch_data
COPY ./shared/init-scripts/* /docker-entrypoint-initdb.d/

RUN localedef -i cs_CZ -c -f UTF-8 -A /usr/share/locale/locale.alias cs_CZ.UTF-8
