FROM debian:buster

RUN apt-get update
RUN apt-get install -qy nginx
RUN apt-get install -qy mariadb-server
RUN apt-get install -qy php
RUN apt-get install -qy php-cli php-fpm php-cgi
RUN apt-get install -qy php-mysql
RUN apt-get install -qy php-mbstring
RUN apt-get install -qy openssl
RUN apt-get install -qy zip
RUN apt-get clean -y

COPY srcs/wordpress /var/www/wordpress
COPY srcs/phpmyadmin /var/www/phpmyadmin

# configure nginx
COPY srcs/default /etc/nginx/sites-available/
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/localhost.key -out /etc/ssl/certs/localhost.crt -subj "/C=US/ST=Utah/L=Lehi/O=Your Company, Inc./OU=IT/CN=yourdomain.com"

# run server
EXPOSE 80
EXPOSE 443

COPY srcs/start.sh /etc/start.sh
COPY srcs/init.sql /etc/init.sql

RUN chmod +x /etc/start.sh
CMD bash /etc/start.sh
