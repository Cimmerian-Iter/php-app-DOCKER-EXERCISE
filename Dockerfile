
FROM php:8.2-apache-bullseye

RUN apt-get update && apt-get install -y \
    git \
    unzip \
    librabbitmq-dev \
    git=1:2.30.2-1+deb11u2 \
    wget=1.21-1+deb11u1 \
    lsb-release


# Install the PHP extensions we need
RUN pecl install amqp && docker-php-ext-enable amqp
RUN docker-php-ext-install sockets
RUN docker-php-ext-install bcmath
COPY . /var/www/html
ENV COMPOSER_ALLOW_SUPERUSER=1
# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer -version=2.6.2
RUN composer update
RUN composer install
# Copy the current directory contents into the container at /var/www/html
