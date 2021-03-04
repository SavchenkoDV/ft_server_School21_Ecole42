# ft_server_School21_Ecole42

Sys-Admin project. The aim is to discover Docker and setup a web server.
Based on the task, we need to raise the server with the help of <a href="https://docs.docker.com/">Docker</a>, on <a href="https://www.debian.org/">the debian operating system</a>.
The server will include (<a href="https://lempstack.com/">LEMP STACK</a>): Debian:buster, Nginx, MySQL or MariaDB, php, and phpmyadmin, Wordpress, open ssl.

IF YOU WANT TO CREATE SELF SERVER:<br>
This will help get the server up and running (you need to read in this order, do not start the second point until you read the first):<br>
* <a href="https://wordpress.org/support/article/how-to-install-wordpress/">How to install WordPress and what necessary to install Before it.</a><br>
* <a href="https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mariadb-php-lemp-stack-on-debian-10">How To Install LEMP stack on Debian 10</a><br>

IF YOU WANT JUST USING FINISHED ASSEMBLY:<br>
This is a sample instruction for running VI and BBB on a MAC.<br>
On other OS, the instructions may change a little, you can read in more detail <a href="https://docs.docker.com/">HERE</a>.<br>

* Install Docker.<br>
* Start Docker (This may take some time. It is important to wait until the loading is complete, don't hurry!).<br>
* Then go to the options->resources->Disk image location clicks to Browse choose your disk->goinfre. Apply & restart.<br>
* Download this repository.<br>
* Change your name and password in the files: srcs/createDB.sql and srcs/wp-config.php<br>
After that open terminal, move to the folder where you previously downloaded the repository and then write some commands:<br>
* docker build -t name .<br>
* docker run -it -p 80:80 -p 443:443 -d name<br>

You ran container. Now you can open:<br>
* <a href="https://localhost/wordpress">WordPress</a><br>
* <a href="https://localhost/phpmyadmin/">phpmyadmin</a><br>

This commands for remove containers and images:<br>
* docker rm -f $(docker ps -aq)<br>
* docker rmi -f $(docker images -aq)<br>
* docker system prune<br>

A few more commands:<br>

* docker ps - show running containers<br>
* docker exec -ti CONTAINER_ID /bin/bash - enter the container open bash<br>
* exit - exit the container<br>

Actual Status : finished.<br>
Result : 100%<br>

This is my ft_server project from the 42 cursus.