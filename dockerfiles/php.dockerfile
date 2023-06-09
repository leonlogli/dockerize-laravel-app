FROM php:8.1.18-fpm-alpine3.17

WORKDIR /var/www/html

COPY src .

RUN docker-php-ext-install pdo pdo_mysql

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

USER laravel 

# RUN chown -R laravel:laravel .