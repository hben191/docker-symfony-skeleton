FROM php:8.3-fpm

# Installer les extensions PHP nécessaires
RUN apt-get update && apt-get install -y \
    git \
    libicu-dev \
    libonig-dev \
    libxml2-dev \
    && docker-php-ext-install intl pdo_mysql mbstring

WORKDIR /var/www/app

# Installer Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Install Symfony CLI
RUN curl -sS https://get.symfony.com/cli/installer | bash
RUN mv /root/.symfony*/bin/symfony /usr/local/bin/symfony

CMD ["php-fpm"]