FROM alpine:3.11

RUN apk update && apk add mysql mysql-client supervisor

COPY mysql.sh .
COPY supervisord.conf /etc/supervisord.conf

ENTRYPOINT sh mysql.sh
EXPOSE 3306