FROM php:8.2-apache
RUN docker-php-ext-install pdo pdo_mysql
ENV COMPOSER_ALLOW_SUPERUSER=1
COPY --from=composer2.4 /usr/bin/composer /usr/bin/composer
COPY composer.json composer.lock .
RUN composer install --prefer-dist --no-dev --no-scripts --no-progress --no-interaction
COPY . .
RUN composer dump-autoload --optimize