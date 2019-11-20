FROM  alpine
MAINTAINER Leonel Nunez "leonel@enelserver.com"

RUN apk update && \
apk upgrade &&\
apk add mariadb shadow tzdata mariadb-client
RUN cp /usr/share/zoneinfo/America/Chihuahua /etc/localtime
RUN echo "America/Chihuahua" >/etc/timezone

RUN apk del tzdata && rm -rf /var/cache/apk && usermod -s /bin/sh mysql  &&mkdir /run/mysql && chown mysql.mysql /run/mysql
COPY doinstall /
COPY my.cnf.podman /my.cnf

VOLUME ["/var/lib/mysql/" , "/etc/mysql" ]

EXPOSE 3306

cmd [ "su" ,"-c mysqld", "mysql"]


