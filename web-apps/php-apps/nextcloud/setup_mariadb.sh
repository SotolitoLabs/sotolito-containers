#!/bin/sh

echo "Adding NextCloud database and user"
mysql -u root --password=${MARIADB_PW} < setup.sql
