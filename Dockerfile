FROM php:7.2-apache

COPY website/template/ /var/www/html/

EXPOSE 80
