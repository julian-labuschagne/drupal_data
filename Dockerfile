FROM ubuntu:14.04
MAINTAINER Julian Labuschagne "personxx@gmail.com"

# Add user
RUN adduser --system --group --home /var/www/webdev webdev && adduser webdev www-data

# Create a data directory
RUN mkdir -p /var/www/webdev/platforms && chown webdev /var/www/webdev/platforms
RUN mkdir -p /etc/apache2/sites-enabled && chown webdev /etc/apache2/sites-enabled

# Create a /data volume
VOLUME /var/www/webdev/platforms
VOLUME /etc/apache2/sites-enabled
