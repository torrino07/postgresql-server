FROM postgres

ENV POSTGRES_DB="trading"
ENV POSTGRES_USER="postgres"
ENV POSTGRES_PASSWORD="admingres"
ENV PGDATA="/data/postgresql"

COPY sql/*/*.sql /docker-entrypoint-initdb.d/

EXPOSE 5432