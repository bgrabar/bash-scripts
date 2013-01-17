# replace AAAAAA with computer name
# replace ZZZZZZ with home directory name




#!/bin/bash





# SHARD 1

mongod --port 34001 --config /Users/ZZZZZZ/myrepo/scripts/mdb/config-files/rsa1.conf
mongod --port 34002 --config /Users/ZZZZZZ/myrepo/scripts/mdb/config-files/rsa2.conf
mongod --port 34003 --config /Users/ZZZZZZ/myrepo/scripts/mdb/config-files/rsa3.conf
# mongod --port 34004 --config /Users/ZZZZZZ/myrepo/scripts/mdb/config-files/rsa4.



# SHARD 2

mongod --port 34011 --config /Users/ZZZZZZ/myrepo/scripts/mdb/config-files/rsb1.conf
mongod --port 34012 --config /Users/ZZZZZZ/myrepo/scripts/mdb/config-files/rsb2.conf
mongod --port 34013 --config /Users/ZZZZZZ/myrepo/scripts/mdb/config-files/rsb3.conf
# mongod --port 34014 --config /Users/ZZZZZZ/myrepo/scripts/mdb/config-files/rsb4.conf



# CONFIG SERVERS

mongod --configsvr --port 34019 --config /Users/ZZZZZZ/myrepo/scripts/mdb/config-files/cs1.conf
mongod --configsvr --port 34020 --config /Users/ZZZZZZ/myrepo/scripts/mdb/config-files/cs2.conf
mongod --configsvr --port 34021 --config /Users/ZZZZZZ/myrepo/scripts/mdb/config-files/cs3.conf



# ROUTER

mongos --port 34017 --configdb AAAAAA.local:34019,AAAAAA.local:34020,AAAAAA.local:34021 --config /Users/ZZZZZZ/myrepo/scripts/mdb/config-files/mongos.conf

