FROM php:5.6.33-fpm
COPY sources.list /etc/apt/sources.list
RUN apt-get update \
	&& apt-get install -y vim git curl \
	&& curl -sS https://getcomposer.org/installer | php \
	&& mv composer.phar /usr/local/bin/composer \
	&& composer config -g repo.packagist composer https://packagist.phpcomposer.com \
	&& rm -rf /var/lib/apt/lists/*