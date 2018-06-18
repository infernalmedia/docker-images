FROM php:7.1.17-apache-stretch

RUN a2enmod rewrite
RUN docker-php-ext-install mysqli 
RUN pecl install xdebug && docker-php-ext-enable xdebug
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        git \
        zip \
        unzip \
    && curl --silent --show-error https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer
