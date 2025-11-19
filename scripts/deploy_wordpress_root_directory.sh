#!/bin/bash
source .env
cd /tmp
wget https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz
sudo cp -R wordpress/* $WORDPRESS_DIR
sudo chown -R www-data:www-data $WORDPRESS_DIR
sudo chmod -R 755 $WORDPRESS_DIR

# Configurar wp-config.php
cd $WORDPRESS_DIR
cp wp-config-sample.php wp-config.php
sed -i "s/database_name_here/$WORDPRESS_DB_NAME/" wp-config.php
sed -i "s/username_here/$WORDPRESS_DB_USER/" wp-config.php
sed -i "s/password_here/$WORDPRESS_DB_PASSWORD/" wp-config.php
