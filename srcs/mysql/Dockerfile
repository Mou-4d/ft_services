FROM alpine:3.11

RUN apk update && apk add mysql mysql-client openrc
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/

COPY mysql.sh .
COPY mariadb-server.cnf .
COPY phpmyadmin.sql .
COPY telegraf.conf .
COPY wordpress_db.sql .
COPY liveness.sh .

ENTRYPOINT sh mysql.sh
EXPOSE 3306