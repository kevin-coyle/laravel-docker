# Use the official PHP image with the Apache web server
FROM php:8.2-apache

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libpq-dev \
    libxml2-dev \
    libzip-dev \
    && docker-php-ext-install pdo pdo_pgsql bcmath soap zip

# Get the latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www/html

# Copy existing application directory contents

COPY ../ /var/www/html

# Install Composer dependencies
RUN composer install --no-interaction --no-scripts --prefer-dist

COPY .docker/000-default.conf /etc/apache2/sites-available/000-default.conf

RUN a2enmod rewrite

RUN chown -R www-data:www-data /var/www/html




# Expose port 80 and start Apache service
EXPOSE 80
CMD ["apache2-foreground"]
