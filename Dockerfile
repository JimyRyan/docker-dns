FROM alpine:latest

MAINTAINER JimyRyan <JimyRyan@gmail.com>

RUN apk --update --no-cache add bind

EXPOSE 53/udp 53/tcp

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]
