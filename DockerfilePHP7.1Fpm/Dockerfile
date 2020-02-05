FROM php:7.1-fpm
ENV TZ=Asia/Shanghai
RUN echo "deb http://mirrors.aliyun.com/debian/ buster main non-free contrib\ndeb-src http://mirrors.aliyun.com/debian/ buster main non-free contrib" > /etc/apt/sources.list
RUN apt-get update --allow-unauthenticated \
	# install gd depend lib
	&& apt-get install -y --allow-unauthenticated libwebp-dev libjpeg-dev libpng-dev libfreetype6-dev \
	# configure gd
	&& docker-php-ext-configure gd --with-webp-dir=/usr/include/webp --with-jpeg-dir=/usr/include --with-png-dir=/usr/include --with-freetype-dir=/usr/include/freetype2 \
	# install gd
	&& docker-php-ext-install gd \
	## install libedit-dev for readline
	&& apt-get install -y --allow-unauthenticated libedit-dev \
	&& docker-php-ext-install readline \
	&& apt-get install -y --allow-unauthenticated vim git curl zip \
	&& curl -sS https://getcomposer.org/installer | php \
	&& mv composer.phar /usr/local/bin/composer \
	&& composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/ \
	&& docker-php-ext-install pdo pdo_mysql bcmath zip opcache calendar mysqli sockets exif \
	&& ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
	&& rm -rf /var/lib/apt/lists/*
