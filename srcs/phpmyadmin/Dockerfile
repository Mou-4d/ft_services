FROM alpine:3.11

RUN apk update && apk add nginx

COPY phpmyadmin.sh .

ENTRYPOINT sh phpmyadmin.sh
EXPOSE 5000