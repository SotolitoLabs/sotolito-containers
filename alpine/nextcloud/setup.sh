#!/bin/sh

echo "Setting up Nextcloud..."


mkdir /var/sotolito/vols/php-apps/
cd /var/sotolito/vols/php-apps
tar xvf /nextcloud-14.0.0.tar.bz2
chown -R nginx:nginx nextcloud


