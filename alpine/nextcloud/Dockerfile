FROM  alpine
MAINTAINER Ivan Chavero "ichavero@chavero.com.mx"
ENV NEXTCLOUD_VERSION 16.0.5

ADD https://download.nextcloud.com/server/releases/nextcloud-$NEXTCLOUD_VERSION.tar.bz2 /nextcloud.tar.bz2
COPY setup.sh /

cmd ["/setup.sh"]

