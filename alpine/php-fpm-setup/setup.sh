#!/bin/sh

echo "setupiando ando"


mkdir /var/sotolito/
cd /var/sotolito 
#mkdir -p vols/nginx/var/lib/nginx/tmp
mkdir -p vols/nginx/var/log/nginx
tar xvf /volconf.tar.bz2
chown 100 /var/sotolito/vols/nginx/var/lib/nginx
chgrp 101 /var/sotolito/vols/nginx/var/lib/nginx
