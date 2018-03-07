#!/bin/sh

echo "setupiando ando"


mkdir /var/sotolito/vols/php-apps/
cd /var/sotolito/vols/php-apps
tar xvf /latest.tar.gz
chown -R nginx:nginx wordpress


