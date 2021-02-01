FROM alpine:3.11

RUN apk update && apk add nginx
COPY nginx.sh .
ENTRYPOINT sh nginx.sh
