FROM postgres:13.2

RUN apt update -y 

RUN apt install gettext -y

COPY ./entrypoint.sh /pagila-entrypoint.sh
# will be substituted with envsusbt when container starts
COPY /pagila-schema.sql /tmp/pagila-schema.sql
COPY /pagila-data.sql /docker-entrypoint-initdb.d/2-pagila-data.sql

ENTRYPOINT ["/pagila-entrypoint.sh"]
