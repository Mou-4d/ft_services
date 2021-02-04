FROM alpine:3.11

RUN apk update && apk add nginx openssl wget 

COPY wordpress.sh .
COPY default.conf .
COPY index.html .
COPY wordpress.tar.gz .

ENTRYPOINT sh wordpress.sh

EXPOSE 5050