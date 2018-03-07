#!/bin/sh

echo "setupiando ando"


mkdir /var/sotolito/vols/php-apps/
cd /var/sotolito/vols/php-apps
tar xvf /owncloud-10.0.7.tar.bz2
chown -R nginx:nginx wordpress


