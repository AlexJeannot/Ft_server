

# PHP MYADMIN
service php7.3-fpm start
chown -R www-data: /var/www/phpmyadmin
chmod -R 755 /var/www/phpmyadmin

# MYSQL
service mysql start
mysql -u root < /etc/init.sql

# WORDPRESS
chown -R www-data: /var/www/wordpress
chmod -R 755 /var/www/wordpress

# START
service nginx start
sleep infinity
