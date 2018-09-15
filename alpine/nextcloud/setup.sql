-- User and database for nextcloud (REMEMBER TO CHANGE THE PASSWORD)

CREATE USER 'sotolito_nextcloud'@'%' IDENTIFIED BY '3evpt2530kpt8ocitfgfn';
CREATE DATABASE sotolito_nextcloud;
GRANT ALL PRIVILEGES ON sotolito_nextcloud.* to 'sotolito_nextcloud'@'%' IDENTIFIED BY '3evpt2530kpt8ocitfgfn';
GRANT ALL PRIVILEGES ON sotolito_nextcloud.* to 'sotolito_nextcloud'@'10.253.0.0/16' IDENTIFIED BY '3evpt2530kpt8ocitfgfn';
GRANT ALL PRIVILEGES ON sotolito_nextcloud.* to 'sotolito_nextcloud'@'172.0.0.0/24' IDENTIFIED BY '3evpt2530kpt8ocitfgfn';
FLUSH PRIVILEGES;

