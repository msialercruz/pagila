#!/bin/sh

# subtitue placeholders ${POSTGRES_USER} avec valeur de variable
envsubst '${POSTGRES_USER}' < /tmp/pagila-schema-template.sql > /docker-entrypoint-initdb.d/1-pagila-schema.sql
envsubst '${POSTGRES_USER}' < /tmp/pagila-data-template.sql > /docker-entrypoint-initdb.d/2-pagila-data.sql

# entrypoint par défaut
/usr/local/bin/docker-entrypoint.sh docker-entrypoint.sh postgres
