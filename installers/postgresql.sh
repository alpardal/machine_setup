#!/bin/bash

sudo add-apt-repository "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" -y
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update

sudo apt-get install postgresql-14 libpq-dev -y

user=`whoami`

sudo su postgres -c "psql -c 'CREATE ROLE $user SUPERUSER LOGIN;'"

# set your password:
#
#   sudo su - postgres -c $'psql -c "ALTER ROLE <username> WITH PASSWORD \'<password>\'"'
