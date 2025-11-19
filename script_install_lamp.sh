#!/bin/bash
sudo apt update
sudo apt install -y apache2 mysql-server php php-mysql libapache2-mod-php
sudo systemctl enable apache2
sudo systemctl enable mysql
