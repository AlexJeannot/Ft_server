CREATE DATABASE data_base_wordpress;
CREATE USER 'my_admin'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON data_base_wordpress.* TO 'my_admin'@'localhost';
