#!/usr/bin/env r

library(RMariaDB)
message('connecting to root account without SSL')
db <- dbConnect(MariaDB(), host = 'mysql', user = 'root', password='root')

message('connecting to ssltest account without SSL (should fail)')
try(db <- dbConnect(MariaDB(), host = 'mysql', user = 'ssltest', password='ssltest'))


message('connecting to ssltest account with SSL')
db <- dbConnect(MariaDB(), host = 'mysql', user = 'ssltest', password='ssltest', client.flag = 2048)
