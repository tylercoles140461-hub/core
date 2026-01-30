FROM php:8.2-apache

# Install required PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy app files into web root
COPY . /var/www/html/

# Enable Apache mod_rewrite if Gibbon needs it
RUN a2enmod rewrite

# Set proper permissions (optional but safer)
RUN chown -R www-data:www-data /var/www/html
