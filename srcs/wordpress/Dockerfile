FROM alpine:3.11

RUN apk update && apk add nginx php7-fpm php7 php7-mysqli php7-mbstring php7-json php7-session openrc

COPY wordpress.sh .
COPY default.conf ./etc/nginx/conf.d/default.conf
COPY wordpress.tar.gz .
COPY wp-config.php .

ENTRYPOINT sh wordpress.sh

EXPOSE 5050
