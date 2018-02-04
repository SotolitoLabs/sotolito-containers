#!/bin/bash

echo "setupiando ando"


mkdir /var/sotolito/
cd /var/sotolito 
mkdir -p vols/nginx/var/lib/nginx/tmp
mkdir -p vols/nginx/var/log/nginx
tar xvf /volconf.tar.bz2

