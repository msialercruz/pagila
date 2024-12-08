FROM postgres:17

RUN apt update -y 

RUN apt install gettext -y

# TODO: integrer schéma et données jsonb dans:
# ./pagila-schema-jsonb.sql
# ./restore-pagila-data-jsonb.sh
# ./pagila-data-yum-jsonb.backup
# ./pagila-data-apt-jsonb.backup

COPY ./entrypoint.sh /pagila-entrypoint.sh
# placeholders ${POSTGRES_USER} seront substitués avec envsusbt quand container démarre
COPY /pagila-schema.sql /tmp/pagila-schema-template.sql
COPY /pagila-data.sql /tmp/pagila-data-template.sql

ENTRYPOINT ["/pagila-entrypoint.sh"]
