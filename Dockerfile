FROM postgres:16-alpine

ENV TZ=America/Sao_Paulo

COPY init/ /docker-entrypoint-initdb.d/
