#! /bin/bash
cd ./DockerfileMysql5.7/
bash ./build.sh
cd ../DockerfileNginx1.13.8/
bash ./build.sh
cd ../DockerfilePHP5.6Fpm/
bash ./build.sh
cd ../DockerfilePHP7.1Fpm/
bash ./build.sh
# delete not used images
docker container prune --force
docker image prune --force
docker images
