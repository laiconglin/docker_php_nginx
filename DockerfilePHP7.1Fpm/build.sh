#! /bin/bash
docker build --no-cache -t php:7.1.latest-fpm .
docker container prune --force
docker image prune --force
