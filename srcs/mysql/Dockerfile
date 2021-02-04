FROM alpine:3.11

RUN apk update && apk add mysql mysql-client supervisor

COPY mysql.sh .
COPY supervisord.conf /etc/supervisord.conf

ENTRYPOINT supervisord -c /etc/supervisord.conf
EXPOSE 3306