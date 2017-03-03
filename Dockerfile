FROM jimyryan/docker-ubuntu

MAINTAINER JimyRyan <JimyRyan@gmail.com>

RUN set -eux \
	&& apt-get update -yqq \
	&& apt-get install -y --no-install-recommends bind9

VOLUME ["/etc/bind", "/var/lib/bind"]

EXPOSE 53 53/udp

ENTRYPOINT ["/usr/sbin/named", "-c", "/etc/bind/named.conf", "-g"]