FROM php:8.1-apache

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Copy all files to Apache web root
COPY . /var/www/html/

# Set proper permissions (optional, for security)
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html
