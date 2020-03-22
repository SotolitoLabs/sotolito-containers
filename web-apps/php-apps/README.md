## Install Sotolito Web Apps

Web apps need the sotolito-nginx and sotolito-php-fpm services to be running, 
make sure this two services are running before installing a Sotolito Web App.

To install a Web App run the `install.sh` script inside the application directory.

For example to install nextcloud:

```
web-apps $ cd nextcloud
web-apps $ ./install.sh <mariadb root password> <nextcloud user madiadb password>
```

And follow the script instructions, each script has a different set of arguments and post-install instructions.

