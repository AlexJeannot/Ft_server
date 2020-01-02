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
RUN apt-get install -y wget

COPY srcs/wordpress.zip var/www/
COPY srcs/localhost etc/nginx/sites-available/
COPY srcs/init.sql var/www/
COPY srcs/start.sh .

CMD bash start.sh && tail -f /dev/null
