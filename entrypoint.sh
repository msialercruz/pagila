#!/bin/sh

# will only replace ${POSTGRES_USER} placeholders with actual os variable value
envsubst '${POSTGRES_USER}' < /tmp/pagila-schema.sql > /docker-entrypoint-initdb.d/1-pagila-schema.sql

# default entrypoint for postgres
/docker-entrypoint.sh postgres
