#! /bin/bash
docker build --no-cache -t php:7.4.latest-fpm .
docker container prune --force
docker image prune --force
