FROM  alpine:3.16
MAINTAINER Leonel Nunez "leonel@enelserver.com"

RUN apk --no-cache update && \
apk upgrade --no-cache &&\
apk --no-cache add php8-fpm php8-xml php8-pgsql php8-opcache php8-mbstring php8-json php8-intl tzdata php8-session php8-pdo php8-pdo_pgsql php8-openssl php8-iconv php8-exif php8-dom php8-pdo_mysql php8-zip php8-xml php8-xmlwriter php8-xmlreader php8-ctype php8-gd php8-zlib php8-simplexml php8-curl php8-fileinfo php8-ldap php8-mysqli php8-posix php8-phar php8-pecl-imagick php8-gmp php8-bcmath

RUN cp /usr/share/zoneinfo/America/Chihuahua /etc/localtime
RUN echo "America/Chihuahua" >/etc/timezone

RUN apk del tzdata
RUN rm -rf /var/cache/apk


cmd ["/usr/sbin/php-fpm8", "-F"]

