#!/usr/bin/env r

library(RMySQL)
message('connecting to root account without SSL')
db <- dbConnect(MySQL(), host = 'mysql', user = 'root', password='root')
dbSendQuery(db, "CREATE USER 'ssltest'@'%' IDENTIFIED BY 'ssltest';")
dbSendQuery(db, "GRANT USAGE ON *.* TO 'ssltest'@'%' REQUIRE SSL;")

message('user created')
