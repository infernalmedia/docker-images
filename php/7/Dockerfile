FROM php:7.4.11-cli

RUN pecl install xdebug && docker-php-ext-enable xdebug
RUN apt-get update && \ 
    apt-get install -y --no-install-recommends \
        git \
        zip \
        unzip \
	    libpng-dev \
	    libzip-dev \
        libmagickwand-dev \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean \
    && curl --silent --show-error https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer
RUN docker-php-ext-install \
    exif \
    gd \
    bcmath \
    mysqli \
    pdo \
    pdo_mysql \ 
    zip

RUN pecl install imagick && docker-php-ext-enable imagick
