FROM php:5.6-apache-jessie

RUN a2enmod rewrite
RUN pecl install xdebug-2.5.5 && docker-php-ext-enable xdebug
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        git \
        zip \
        unzip \
	libpng-dev \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean \
    && curl --silent --show-error https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer
RUN docker-php-ext-install \
    bcmath \
    exif \
    gd \
    mysqli \
    pdo \
    pdo_mysql \
    zip
