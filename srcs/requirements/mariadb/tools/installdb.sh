#!/bin/bash

cat << EOF > /etc/mysql/init.sql

CREATE DATABASE ${DB_NAME};
CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';
FLUSH PRIVILEGES;
EOF

chmod +x /etc/mysql/init.sql

mysql_install_db
exec mysqld
