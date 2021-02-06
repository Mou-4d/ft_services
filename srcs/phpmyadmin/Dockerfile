FROM alpine:3.11

RUN apk update && apk add nginx openrc wget
RUN apk add php7-fpm php7 php7-mysqli php7-mbstring php7-json php7-session

COPY phpmyadmin.sh .
COPY default.conf ./etc/nginx/conf.d/default.conf

ENTRYPOINT sh phpmyadmin.sh
EXPOSE 5000