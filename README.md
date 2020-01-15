# mysql_ssl_r_connect_bug
Reproducible example for the freeze bug when connecting from R to MySQL using SSL

this provides:
- a MySQL server with SSL enabled
- R with RMyQL and RMariaDB installed
- scripts to reproduce the SSL freeze problem.

## prerequisites

- docker
- docker-compose >= 3.4
- make

## USAGE

build and start the dockers:
```
make build start
```

in another terminal:

```
# run bash in the R container
make rbash

# create the ssltest user
%create_ssltest_user.R

# try to connect using RMySQL
%rmysql_ssl_connect.R
# should hang, type CTRL+C to interrupt

# try to connect using RMariaDB
%rmariadb_ssl_connect.R
# should hang too, type CTRL+C to interrupt

# at this point you can run R directly
%R
```

## connect to the MySQL instance from the host

the MySQL port is bound to local port 33060.
You can connect e.g. with MySQLWorkbench with:

- localhost
- 33060
- root:root
