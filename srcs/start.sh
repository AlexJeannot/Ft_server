

# WORDPRESS
unzip /var/www/wordpress.zip -d /var/www/

# MYSQL
service mysql start
mysql < /var/www/init.sql
# mysql wordpress -u root --password=  < /var/www/wordpress.sql

echo 'MYSQL'

# LINK SITE
ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/
chown -R www-data:www-data /var/www/*
chmod -R 755 /var/www/*

# RUN PHP
/etc/init.d/php7.3-fpm start

# SSL
mkdir ./mkcert && \
  cd ./mkcert && \
  wget https://github.com/FiloSottile/mkcert/releases/download/v1.1.2/mkcert-v1.1.2-linux-amd64 && \
  mv mkcert-v1.1.2-linux-amd64 mkcert && \
  chmod +x mkcert
./mkcert -install
./mkcert localhost


# START
service nginx start
