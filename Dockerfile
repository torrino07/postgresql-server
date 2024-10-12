FROM postgres

ARG POSTGRES_DB
ARG POSTGRES_HOST_AUTH_METHOD

ENV POSTGRES_DB=$POSTGRES_DB
ENV POSTGRES_HOST_AUTH_METHOD=$POSTGRES_HOST_AUTH_METHOD

COPY pg_hba.conf /var/lib/postgresql/data/pg_hba.conf
RUN chown postgres:postgres /var/lib/postgresql/data/pg_hba.conf
COPY postgresql.conf /etc/postgresql/postgresql.conf

COPY sql/*/*.sql /docker-entrypoint-initdb.d/

EXPOSE 5432