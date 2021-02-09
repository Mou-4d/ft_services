FROM alpine:3.11

RUN apk update && apk add vsftpd openrc
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/

COPY ftps.sh .
COPY telegraf.conf .

ENTRYPOINT sh ftps.sh

EXPOSE 21
