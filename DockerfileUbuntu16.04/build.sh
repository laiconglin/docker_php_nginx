#! /bin/bash
docker build --no-cache -t ubuntu:16.04-latest .
docker image prune --force