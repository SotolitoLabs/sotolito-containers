#!/bin/bash

echo "setupiando ando"


mkdir /var/sotolito/vols/php-apps/
cd /var/sotolito/vols/php-apps
tar xvf /roundcubemail-1.2.2-complete.tar.gz
chown -R nginx:nginx roundcubemail-1.2.2
ln -s roundcubemail-1.2.2 roundcube



