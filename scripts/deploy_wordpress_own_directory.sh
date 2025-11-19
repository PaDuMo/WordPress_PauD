#!/bin/bash
source .env
WORDPRESS_SUBDIR="$WORDPRESS_DIR/wordpress"
cd /tmp
wget https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz
sudo mkdir -p $WORDPRESS_SUBDIR
sudo cp -R wordpress/* $WORDPRESS_SUBDIR
sudo chown -R www-data:www-data $WORDPRESS_SUBDIR
sudo chmod -R 755 $WORDPRESS_SUBDIR

# Configurar wp-config.php
cd $WORDPRESS_SUBDIR
cp wp-config-sample.php wp-config.php
sed -i "s/database_name_here/$WORDPRESS_DB_NAME/" wp-config.php
sed -i "s/username_here/$WORDPRESS_DB_USER/" wp-config.php
sed -i "s/password_here/$WORDPRESS_DB_PASSWORD/" wp-config.php
