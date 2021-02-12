FROM alpine:3.11

RUN apk update && apk add vsftpd openrc openssl
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/

COPY ftps.sh .
COPY telegraf.conf .
COPY liveness.sh .
COPY vsftpd.conf .

ENTRYPOINT sh ftps.sh

EXPOSE 21 20 21009-21011
