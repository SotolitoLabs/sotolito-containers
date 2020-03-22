-- User and database for nextcloud (REMEMBER TO CHANGE THE PASSWORD)

CREATE DATABASE sotolito_nextcloud;
GRANT ALL PRIVILEGES ON sotolito_nextcloud.* to 'sotolito_nextcloud'@'%' IDENTIFIED BY 'PLEASE PUT A STRONG DEFAULT PASSWORD';
FLUSH PRIVILEGES;

