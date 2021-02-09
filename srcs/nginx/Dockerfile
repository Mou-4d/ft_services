FROM alpine:3.11

RUN apk update && apk add nginx openssl openrc

COPY nginx.sh .
COPY default.conf .
COPY index.html .

ENTRYPOINT sh nginx.sh

EXPOSE 80
EXPOSE 443
