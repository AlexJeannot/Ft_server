CREATE DATABASE database_wordpress;
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON database_wordpress.* TO 'admin'@'localhost';
