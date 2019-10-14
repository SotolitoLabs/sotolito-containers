# Sotolito mariadb

How to build:

## Systemd

### To integrate with a evil systemd ruled system run:

```
$ ./systemd_setup maridb_root_password
```

### Start it

```
# systemctl start sotolito-mariadb
```

## Independent

### Build and setup
```
$ ./standalone_setup maridb_root_password
```

### Run it

```
$ ./runmaria
```

