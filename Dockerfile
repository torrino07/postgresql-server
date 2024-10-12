FROM postgres

ENV POSTGRES_DB="trading"
ENV POSTGRES_HOST_AUTH_METHOD="trust"
ENV PGDATA="/data/postgresql"

COPY pg_hba.conf /var/lib/postgresql/data/pg_hba.conf
RUN chown postgres:postgres /var/lib/postgresql/data/pg_hba.conf
COPY postgresql.conf /etc/postgresql/postgresql.conf

COPY sql/*/*.sql /docker-entrypoint-initdb.d/

EXPOSE 5432