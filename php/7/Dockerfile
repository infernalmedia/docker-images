FROM php:7.1.17-apache-stretch

RUN a2enmod rewrite
RUN pecl install xdebug && docker-php-ext-enable xdebug
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
    gd \
    mysqli \
    zip
