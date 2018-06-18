FROM php:5.6-apache-jessie

RUN a2enmod rewrite
RUN docker-php-ext-install mysqli
RUN pecl install xdebug-2.5.5 && docker-php-ext-enable xdebug
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        git \
        zip \
        unzip \
    && rm -rf /var/lib/apt/lists/* \
    && curl --silent --show-error https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer
