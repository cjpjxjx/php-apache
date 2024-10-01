FROM php:8-apache

COPY remoteip.conf /etc/apache2/conf-available/remoteip.conf
RUN a2enmod remoteip
RUN a2enconf remoteip

CMD ["apache2-foreground"]

LABEL maintainer="cjpjxjx <cjp_jx@cencs.com>"
LABEL description="Customized PHP Apache image with remoteip module enabled"
LABEL version="1.0"
LABEL vendor="cencs.com"

