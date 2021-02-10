FROM alpine:3.11

RUN apk update && apk add nginx openssl openrc
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/

COPY nginx.sh .
COPY default.conf .
COPY index.html .
COPY telegraf.conf .
COPY liveness.sh .

ENTRYPOINT sh nginx.sh

EXPOSE 80
EXPOSE 443
