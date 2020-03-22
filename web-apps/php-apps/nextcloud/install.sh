#!/bin/bash
# Install and configure nextcloud on a systemd container enviromnent
# Usage: install.sh <maridb_root_password> <nextcloud_password>
# Iván Chavero <ichavero@chavero.com.mx>


source /etc/sotolito/nginx.env
source ../../../lib/containers.shlib
MARIADB_USER="sotolito-mariadb"
MARIADB_CONTAINER="sotolito-mariadb-service"
# Don't use the defaults
MARIADB_PW="PLEASE PUT A STRONG DEFAULT PASSWORD"
NEXTCLOUD_PW="PLEASE PUT A STRONG DEFAULT PASSWORD"
NEXTCLOUD_URL="apps.example.com"
CONTAINER_SERVICE_NAME="sotolito-nginx"

if  [[ "${1}" != "" ]]; then
    MARIADB_PW=$1
fi

if  [[ "${2}" != "" ]]; then
    NEXTCLOUD_PW=$2
fi

SUDO=$(check_if_sudo $CONTAINER_USER)

if [[ "$(check_container ${CONTAINER_NAME})" == "" ]]; then
    echo "Container ${CONTAINER_NAME} not running, aborting"
    exit
fi    

CURRENT_DIR=$(pwd)

echo "Setup NextCloud database"
sed "s/{{PASSWORD}}/$NEXTCLOUD_PW/" setup.sql.tpl > setup.sql
sudo -i -u ${MARIADB_USER} podman cp ${CURRENT_DIR}/setup.sql ${MARIADB_CONTAINER}:/setup.sql
sudo -i -u ${MARIADB_USER} podman cp ${CURRENT_DIR}/setup_mariadb.sh \
        ${MARIADB_CONTAINER}:/setup_mariadb.sh
sudo -i -u ${MARIADB_USER} podman exec -e MARIADB_PW=${MARIADB_PW} \
        -ti ${MARIADB_CONTAINER} /setup_mariadb.sh


echo "Setup NextCloud"
$SUDO podman cp ${CURRENT_DIR}/etc/nextcloud_nginx.conf ${CONTAINER_NAME}:/etc/nginx/apps.d/nextcloud_nginx.conf
$SUDO podman cp ${CURRENT_DIR}/setup.sh ${CONTAINER_NAME}:/setup.sh
$SUDO podman exec -ti ${CONTAINER_NAME} /setup.sh

# Restart HTTP server so it loads the nextcloud configurations
sudo systemctl restart ${CONTAINER_SERVICE_NAME}
echo "Go to: http://<your_domain>/php-apps/nextcloud to finis installation"
