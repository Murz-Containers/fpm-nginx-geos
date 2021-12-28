FROM murznn/fpm-nginx:7.4.27

RUN apk add git patch mysql-client mariadb-connector-c bash pv geos-dev nodejs-current yarn icu-dev

RUN git clone https://git.osgeo.org/gitea/geos/php-geos.git --depth=1 /usr/src/php/ext/geos \
    && docker-php-ext-install bcmath \
    && docker-php-ext-install intl \
    && docker-php-ext-install geos \
    && rm -rf /usr/src/php/ext/geos
