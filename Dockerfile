FROM wordpress:latest
MAINTAINER Nitin Tripathi <nitintripathi@hotmail.com>

RUN apt-get update && \
apt-get install -y \
libfreetype6-dev \
libjpeg62-turbo-dev \
libpng-dev \
libsqlite3-dev \
libcurl4-gnutls-dev \
&& apt-get install git -y \
&& apt-get install -y mysql-client \
&& docker-php-ext-install -j$(nproc) iconv pdo_mysql gd zip curl bcmath opcache mbstring \
&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
&& docker-php-ext-install -j$(nproc) gd \
&& docker-php-ext-enable iconv pdo_mysql gd zip curl bcmath opcache mbstring \
&& apt-get autoremove -y

RUN apt-get update -y && \
    apt-get install -y libmcrypt-dev && \
    pecl install mcrypt-1.0.1 && \
    docker-php-ext-enable mcrypt
    
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

RUN apt-get update && apt-get install -y libmagickwand-6.q16-dev --no-install-recommends \
&& ln -s /usr/lib/x86_64-linux-gnu/ImageMagick-6.8.9/bin-Q16/MagickWand-config /usr/bin \
&& pecl install imagick \
&& docker-php-ext-enable imagick

WORKDIR /var/www
