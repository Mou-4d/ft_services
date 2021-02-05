FROM alpine:3.11

RUN apk update && apk add mysql mysql-client

COPY mysql.sh .
COPY mariadb-server.cnf .

ENTRYPOINT sh mysql.sh
EXPOSE 3306