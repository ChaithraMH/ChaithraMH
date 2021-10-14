FROM php:8.0-apache





ENV http_proxy http://138.35.86.205:8080
ENV https_proxy http://138.35.86.205:8080

MAINTAINER "lpastva <pastva@dxc.com>"
RUN a2enmod rewrite
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

RUN apt-get update
RUN docker-php-ext-install mysqli

#RUN apt-get install -qq -y libgd-dev libfreetype6-dev libjpeg62-turbo-dev libpng-dev
#RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/

#RUN docker-php-ext-install gd

COPY ./html /var/www/html