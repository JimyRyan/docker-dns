FROM jimyryan/docker-ubuntu

MAINTAINER JimyRyan <JimyRyan@gmail.com>

RUN apt-get install -y --no-install-recommends bind9

VOLUME ["/etc/bind", "/var/lib/bind"]

EXPOSE 53/udp

ENTRYPOINT ["/usr/sbin/dhcpd", "-d", "--no-pid"]