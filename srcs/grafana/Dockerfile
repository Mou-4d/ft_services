FROM alpine:3.11

RUN apk update && apk add wget libc6-compat

COPY grafana.sh .

ENTRYPOINT sh grafana.sh
EXPOSE 3000