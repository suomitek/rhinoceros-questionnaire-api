FROM php:7.4.10-fpm

RUN sed -i "s@http://deb.debian.org@http://mirrors.aliyun.com@g" /etc/apt/sources.list && rm -Rf /var/lib/apt/lists/* &&  cat /etc/apt/sources.list

# Update packages
RUN apt-get update

# Install PHP and composer dependencies
RUN apt-get install -qq git curl libmcrypt-dev libjpeg-dev libpng-dev libfreetype6-dev libbz2-dev libzip-dev

# Clear out the local repository of retrieved package files
# RUN apt-get clean

# Install needed extensions
# Here you can install any other extension that you need during the test and deployment process
RUN php -i
RUN docker-php-source extract /usr/src/
RUN pecl install mcrypt
RUN docker-php-ext-enable mcrypt
RUN apt-get clean; docker-php-ext-install pdo pdo_mysql mysqli zip gd pcntl opcache bcmath


# Installs Composer to easily manage your PHP dependencies.
RUN curl --silent --show-error https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Node
#RUN apt-get update &&\
#  apt-get install -y --no-install-recommends gnupg &&\
#  curl -sL https://deb.nodesource.com/setup_10.x | bash - &&\
#  apt-get update &&\
#  apt-get install -y --no-install-recommends nodejs &&\
#  npm config set registry https://registry.npm.taobao.org --global &&\
#  npm install --global gulp-cli

CMD php-fpm
