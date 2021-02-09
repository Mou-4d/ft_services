FROM alpine:3.11

RUN apk update && apk add vsftpd openrc

COPY ftps.sh .

ENTRYPOINT sh ftps.sh

EXPOSE 21
