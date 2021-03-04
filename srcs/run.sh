#!/bin/bash
service php7.3-fpm start
service nginx start
service mysql start
mysql < createDB.sql
rm createDB.sql
rm /var/www/html/index.nginx-debian.html
apt-get install -y vim