#!/bin/bash
source .env
sudo apt install -y certbot python3-certbot-apache
sudo certbot --apache -d $DOMAIN_NAME -m $EMAIL --agree-tos --redirect --non-interactive
