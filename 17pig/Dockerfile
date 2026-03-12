FROM postgres:17

ENV POSTGRES_VERSION=17

# Install pig extension package manager
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    && curl -fsSL https://repo.pigsty.io/pig | bash \
    && rm -rf /var/lib/apt/lists/*

# Set up repositories and install extensions using pig
RUN pig repo set && \
    pig install -y -v ${POSTGRES_VERSION} timescaledb pg_cron pgvector

# Preload required libraries (timescaledb and pg_cron require this)
RUN echo "shared_preload_libraries = 'timescaledb,pg_cron'" >> /usr/share/postgresql/postgresql.conf.sample

# Copy extension init scripts
COPY ./17pig/init-scripts/* /docker-entrypoint-initdb.d/
RUN chmod +x /docker-entrypoint-initdb.d/*.sh

