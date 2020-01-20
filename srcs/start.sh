

# WORDPRESS
chown -R www-data: /var/www/phpmyadmin
chmod -R 755 /var/www/phpmyadmin

# MYSQL
service mysql start
mysql -u root < /etc/init.sql

# PHP MYADMIN
service php7.3-fpm start
chown -R www-data: /var/www/wordpress
chmod -R 755 /var/www/wordpress

# SSL
#mkdir ./mkcert && \
#  cd ./mkcert && \
#  wget https://github.com/FiloSottile/mkcert/releases/download/v1.1.2/mkcert-v1.1.2-linux-amd64 && \
#  mv mkcert-v1.1.2-linux-amd64 mkcert && \
#  chmod +x mkcert
#./mkcert -install
#./mkcert localhost


# START
service nginx start
sleep infinity
