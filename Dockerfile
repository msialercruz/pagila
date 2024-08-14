FROM postgres:13.2

COPY ./pagila-schema.sql /docker-entrypoint-initdb.d/1-pagila-schema.sql
COPY ./pagila-data.sql /docker-entrypoint-initdb.d/2-pagila-data.sql
