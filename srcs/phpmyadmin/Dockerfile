FROM alpine:3.11

RUN apk update && apk add nginx openrc wget
RUN apk add php7-fpm php7 php7-mysqli php7-mbstring php7-json php7-session
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/

COPY phpmyadmin.sh .
COPY default.conf ./etc/nginx/conf.d/default.conf
COPY config.inc.php .
COPY telegraf.conf .
COPY liveness.sh .

ENTRYPOINT sh phpmyadmin.sh
EXPOSE 5000