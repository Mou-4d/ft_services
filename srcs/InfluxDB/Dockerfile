FROM alpine:3.11

RUN apk update && apk add influxdb openrc
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/

COPY influxdb.sh .
COPY telegraf.conf .

ENTRYPOINT sh influxdb.sh

EXPOSE 8086