#!/bin/bash

docker run -d \
           --name my-wordpress-container  \
	       -p 8001:80 \
           -e WORDPRESS_CONFIG_EXTRA="define('WP_HOME','https://littlebagshop.com'); define('WP_SITEURL','https://littlebagshop.com');" \
           -e WORDPRESS_DB_HOST=my-wordpressdb-container:3306 \
           -e WORDPRESS_DB_USER=wordpress \
           -e WORDPRESS_DB_PASSWORD=wordpress \
           -e WORDPRESS_DB_NAME=wordpress \
           --network my-net \
 wordpress:latest

