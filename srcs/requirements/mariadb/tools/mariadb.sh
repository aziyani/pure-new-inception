#!/bin/bash
# This is called a shebang. 
# It tells the system that this script should be executed using the bash shell.

#clears any cached privileges
echo "\
FLUSH PRIVILEGES;
CREATE DATABASE IF NOT EXISTS $DATABASE;
ALTER USER 'root'@'localhost' IDENTIFIED BY '$ROOTPASSWORD';
CREATE USER IF NOT EXISTS '$USERNAME'@'%' IDENTIFIED BY '$USERPASSWORD';
GRANT ALL PRIVILEGES ON *.* TO '$USERNAME'@'%';
FLUSH PRIVILEGES;" > file.sql

mariadbd -u mysql --bootstrap < file.sql

rm -f file.sql

exec "$@"
