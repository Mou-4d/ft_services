FROM alpine:3.11

RUN apk update && apk add mysql mysql-client openrc

COPY mysql.sh .
COPY mariadb-server.cnf .
COPY wordpress_db.sql .

ENTRYPOINT sh mysql.sh
EXPOSE 3306