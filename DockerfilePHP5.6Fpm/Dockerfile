FROM php:5.6.33-fpm
ENV TZ=Asia/Shanghai
COPY sources.list /etc/apt/sources.list
COPY composer5.6.phar /usr/local/bin/composer
RUN apt-get update \
	# install gd depend lib
    && apt-get install -y --allow-unauthenticated libwebp-dev libjpeg-dev libpng-dev libfreetype6-dev \
	# configure gd
	&& docker-php-ext-configure gd --with-webp-dir=/usr/include/webp --with-jpeg-dir=/usr/include --with-png-dir=/usr/include --with-freetype-dir=/usr/include/freetype2 \
	# install gd
	&& docker-php-ext-install gd \
	&& apt-get install -y --allow-unauthenticated vim git curl zip \
	&& chmod a+x /usr/local/bin/composer \
	&& composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/ \
    && docker-php-ext-install pdo pdo_mysql bcmath zip \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
	&& rm -rf /var/lib/apt/lists/*
