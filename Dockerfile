FROM php:8-apache

RUN apt update && apt install -y curl && \
    curl -o /etc/apache2/conf-available/remoteip.conf https://raw.githubusercontent.com/cjpjxjx/php-apache/main/remoteip.conf

RUN a2enmod remoteip
RUN a2enconf remoteip

CMD ["apache2-foreground"]
