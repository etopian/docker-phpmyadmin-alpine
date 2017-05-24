#!/usr/bin/env bash
docker run -d --restart=always -e PMA_USERNAME=admin -e PMA_PASSWORD=password --link mysql:mysql --name phpmyadmin -p 8000:80 etopian/phpmyadmin-alpine
