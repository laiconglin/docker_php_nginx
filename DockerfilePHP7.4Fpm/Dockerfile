FROM php:7.4-fpm
ENV TZ=Asia/Shanghai
COPY sources.list /etc/apt/sources.list
RUN apt-get update --allow-unauthenticated \
#RUN echo "deb http://mirrors.aliyun.com/debian/ buster main non-free contrib\ndeb-src http://mirrors.aliyun.com/debian/ buster main non-free contrib" > /etc/apt/sources.list
#RUN apt-get update --allow-unauthenticated \
	# install gd depend lib
	&& apt-get install -y --allow-unauthenticated libwebp-dev libjpeg-dev libpng-dev libfreetype6-dev \
	# configure gd
	&& docker-php-ext-configure gd \
	# install gd
	&& docker-php-ext-install gd \
	## install libedit-dev for readline
	## && apt-get install -y --allow-unauthenticated libedit-dev \
	## && docker-php-ext-install readline \
	&& apt-get install -y --allow-unauthenticated vim git curl zip \
	## install php composer
	## && curl -sS https://getcomposer.org/installer | php \
	## && mv composer.phar /usr/local/bin/composer \
	## && composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/ \
    && apt-get install -y --allow-unauthenticated libicu-dev libzip-dev \
    && docker-php-ext-install intl \
	&& docker-php-ext-install pdo pdo_mysql bcmath zip calendar mysqli sockets exif \
	## install redis
	## && pecl install redis \
	## && echo "extension=redis.so" > /usr/local/etc/php/conf.d/docker-php-ext-redis.ini \
	&& ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
	&& rm -rf /var/lib/apt/lists/*
