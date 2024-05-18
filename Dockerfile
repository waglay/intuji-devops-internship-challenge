FROM php:7.4-apache
RUN docker-php-ext-install pdo pdo_mysql
ENV COMPOSER_ALLOW_SUPERUSER=1
RUN apt-get update && apt-get install -y \
    zip \
    unzip \
    git apache2
COPY --from=composer:2.2 /usr/bin/composer /usr/bin/composer
COPY composer.json composer.lock ./
RUN composer install --prefer-dist --no-dev --no-scripts --no-progress --no-interaction
COPY . .
RUN composer dump-autoload --optimize
CMD ["composer","require","silarhi/hello-world"]
CMD ["composer","update","silarhi/hello-world"]
CMD ["apache2-foreground"]
