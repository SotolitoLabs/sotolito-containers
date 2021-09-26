FROM  alpine
MAINTAINER Leonel Nunez "leonel@enelserver.com"

RUN apk --no-cache update && \
apk upgrade --no-cache &&\
apk ---no-cache add php7-fpm php7-xml php7-pgsql php7-opcache php7-mbstring php7-json php7-intl tzdata php7-session php7-pdo php7-pdo_pgsql php7-openssl php7-iconv php7-exif php7-dom php7-pdo_mysql php7-zip php7-xml php7-xmlwriter php7-xmlreader php7-ctype php7-gd php7-zlib php7-simplexml php7-curl php7-fileinfo php7-ldap php7-mysqli php7-posix php7-phar
#php7-imagick

RUN cp /usr/share/zoneinfo/America/Chihuahua /etc/localtime
RUN echo "America/Chihuahua" >/etc/timezone

RUN apk del tzdata
RUN rm -rf /var/cache/apk


cmd ["/usr/sbin/php-fpm7"]

