FROM php:5.6.33-fpm
ENV TZ=Asia/Shanghai
COPY sources.list /etc/apt/sources.list
RUN apt-get update \
	&& apt-get install --force-yes -y vim git curl zip \
	&& curl -sS https://getcomposer.org/installer | php \
	&& mv composer.phar /usr/local/bin/composer \
	&& composer config -g repo.packagist composer https://packagist.phpcomposer.com \
    && docker-php-ext-install pdo pdo_mysql bcmath \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
	&& rm -rf /var/lib/apt/lists/*
