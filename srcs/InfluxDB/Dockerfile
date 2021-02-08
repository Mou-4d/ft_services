FROM alpine:3.11

RUN apk update && apk add influxdb openrc

COPY influxdb.sh .

ENTRYPOINT sh influxdb.sh

EXPOSE 8086