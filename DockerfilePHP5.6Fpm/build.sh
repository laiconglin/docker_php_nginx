#! /bin/bash
docker build --no-cache -t php:5.6.latest-fpm .
docker container prune --force
docker image prune --force