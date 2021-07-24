# FROM php:7.4-fpm

# RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
#     && docker-php-ext-install mysqli pdo pdo_mysql \
#     && docker-php-ext-enable pdo_mysql \
#     && apt update \
#     && apt-get install -y zlib1g-dev libxml2-dev libfreetype6-dev libjpeg62-turbo-dev libmcrypt-dev libpng12.0 imagemagick \
#     && apt-get install -y libzip-dev zip \
#     && docker-php-ext-configure gd --with-freetype --with-jpeg \
#     && docker-php-ext-install gd \
#     && docker-php-ext-enable gd \
#     && docker-php-ext-install zip \
#     && pecl install -o -f redis \
#     && rm -rf /tmp/pear \
#     && docker-php-ext-enable redis \
#     && docker-php-ext-configure pcntl --enable-pcntl \
#     && docker-php-ext-install pcntl

FROM haiquang9994/php74-fpm