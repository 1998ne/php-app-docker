FROM php:7.2-apache

# Copy PHP files to web root
COPY website/template/ /var/www/html/

# Give correct ownership to Apache
RUN chown -R www-data:www-data /var/www/html

# Fix for Apache 403 Forbidden
RUN echo '<Directory /var/www/html/>\n\
    Options Indexes FollowSymLinks\n\
    AllowOverride All\n\
    Require all granted\n\
</Directory>' >> /etc/apache2/apache2.conf

# Expose port 80
EXPOSE 80
