FROM php:8-apache
LABEL maintainer="jrbalsas@ujaen.es"

# Use PORT environment variable in Apache configuration files.
RUN sed -i 's/80/${PORT}/g' /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf


# Adjust max apache clients (aprox. 38m of memory use )
#RUN sed -i 's/MaxRequestWorkers.*150/MaxRequestWorkers\t30/' /etc/apache2/mods-available/mpm_prefork.conf

RUN docker-php-ext-install pdo_mysql

WORKDIR /var/www/html

COPY html/ ./

# Apache default port
ENV PORT=80  

EXPOSE 80

#ENTRYPOINT ["",""]

