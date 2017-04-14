#!/bin/bash

sudo add-apt-repository "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" -y
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update

sudo apt-get install postgresql-9.6 -y

echo 'Remember to create your role:'

echo "
$ sudo su postgres -c psql
postgres=# CREATE ROLE <username> SUPERUSER LOGIN;
postgres=# \q
"
