#! /bin/bash
docker build --no-cache -f ./DockerfileMysql5.7/Dockerfile -t mysql:5.7.22.latest .
docker build --no-cache -f ./DockerfileNginx1.21.6/Dockerfile -t nginx:1.21.6.latest .
docker build --no-cache -f ./DockerfilePHP7.4Fpm/Dockerfile -t php:7.4.latest-fpm .
# delete not used images
docker container prune --force
docker image prune --force
docker images
