FROM debian:buster

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y mariadb-server
RUN apt-get install -y php
RUN apt-get install -y php-cli php-fpm php-cgi
RUN apt-get install -y php-mysql
RUN apt-get install -y php-mbstring
RUN apt-get install -y openssl
RUN apt-get install -y zip

RUN unzip srcs/wordpress.zip var/www/
COPY srcs/localhost etc/nginx/sites-available/
COPY srcs/init.sql var/www/
COPY start.sh .
