#! /bin/bash
name=${1}
if [ -z "${1}" ]; then
	echo "Usage ${0} [container-name]"
	echo "example: ${0} fpm_php5.6"
	exit
fi
container_id=`docker ps -aql -f "name=${name}"`
if [ ! -z "${container_id}" ]; then
	docker exec -it ${container_id} /bin/bash
else
	echo "container is not running"
fi