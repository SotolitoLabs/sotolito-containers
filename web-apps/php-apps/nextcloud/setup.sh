#!/bin/sh

MAINTAINER='Ivan Chavero "ichavero@chavero.com.mx"'
NEXTCLOUD_VERSION="18.0.2"
PHP_APPS="/var/lib/nginx/html/php-apps"

echo "Downloading Nextcloud ${NEXTCLOUD_VERSION}"
wget https://download.nextcloud.com/server/releases/nextcloud-$NEXTCLOUD_VERSION.tar.bz2 -O ${PHP_APPS}/nextcloud.tar.bz2

echo "Setting up Nextcloud..."

cd ${PHP_APPS}
tar jxvf nextcloud.tar.bz2
chown -R nginx:nginx nextcloud
rm nextcloud.tar.bz2

echo "Go to your <host>/php-apps/nextcloud to finish your nextcloud installation"


