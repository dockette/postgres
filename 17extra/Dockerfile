FROM dockette/postgres:17

# Install build dependencies and extension packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    postgresql-server-dev-${POSTGRES_VERSION} \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Install pgvector
RUN git clone --branch v0.7.2 https://github.com/pgvector/pgvector.git /tmp/pgvector \
    && cd /tmp/pgvector \
    && make \
    && make install \
    && rm -rf /tmp/pgvector

# Install pg_cron
RUN git clone --branch v1.7.1 https://github.com/citusdata/pg_cron.git /tmp/pg_cron \
    && cd /tmp/pg_cron \
    && make \
    && make install \
    && rm -rf /tmp/pg_cron

# Install TimescaleDB
RUN curl -s https://packagecloud.io/install/repositories/timescale/timescaledb/script.deb.sh | bash \
    && apt-get update \
    && apt-get install -y --no-install-recommends timescaledb-2-postgresql-${POSTGRES_VERSION} \
    && rm -rf /var/lib/apt/lists/*

# Copy extension init scripts
COPY ./17extra/init-scripts/* /docker-entrypoint-initdb.d/
RUN chmod +x /docker-entrypoint-initdb.d/*.sh

# Clean up build dependencies (optional, keeps image smaller)
RUN apt-get purge -y build-essential git \
    && apt-get autoremove -y \
    && apt-get clean

