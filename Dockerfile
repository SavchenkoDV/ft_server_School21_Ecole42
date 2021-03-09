FROM debian:buster

RUN	apt-get update && apt-get -y upgrade

#PHP
RUN apt-get -y install php7.3 php-mysql php-fpm php-cli php-mbstring

#NGINX OPENSSL
RUN	apt-get -y install nginx openssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certc/nginx.crt -subj "/C=RU/ST=Moscow/L=Moscow/O=DVSGroup/OU=SavchenkoDV/CN=https:\/\/github.com\/SavchenkoDV/emailAddress=dvs.rocket@gmail.com"
COPY ./srcs/nginx.conf /etc/nginx/sites-available/default

#MARIADB
RUN	apt-get -y install mariadb-server
COPY ./srcs/createDB.sql .

#WGET
RUN	apt-get install -y wget

#MYPHPADMIN
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-english.tar.gz
RUN	tar -xf phpMyAdmin-5.0.1-english.tar.gz
RUN	rm -rf phpMyAdmin-5.0.1-english.tar.gz
RUN	mv phpMyAdmin-5.0.1-english /var/www/html/phpmyadmin
COPY ./srcs/config.inc.php /var/www/html/phpmyadmin

#WORDPRESS
RUN wget https://wordpress.org/latest.tar.gz
RUN	tar -xf latest.tar.gz
RUN	rm -rf latest.tar.gz
RUN	mv wordpress /var/www/html
COPY ./srcs/wp-config.php var/www/html/wordpress/wp-config.php

COPY ./srcs/run.sh .
CMD sh run.sh; rm run.sh; sleep infinity
