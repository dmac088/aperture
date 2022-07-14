#!/bin/bash

docker run -d
           -p 3306:3306 \
           -e MYSQL_ROOT_PASSWORD=somewordpress \
           -e MYSQL_DATABASE=wordpress \
           -e MYSQL_USER=wordpress \
           -e MYSQL_PASSWORD=wordpress \
           --name my-wordpressdb-container  \
           --network my-net \
           -v $(pwd)/data:/var/lib/mysql \
 mysql:5.7
