#!/bin/sh

echo "Setting up Nextcloud..."

mkdir /var/sotolito/vols/php-apps/
cd /var/sotolito/vols/php-apps
tar xvf /nextcloud.tar.bz2
chown -R nginx:nginx nextcloud


