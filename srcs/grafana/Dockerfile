FROM alpine:3.11

RUN apk update && apk add wget libc6-compat openrc
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/

COPY telegraf.conf .
COPY grafana.sh .
COPY dashboards .
COPY dashboard.yml .
COPY datasource.yml .

ENTRYPOINT sh grafana.sh
EXPOSE 3000