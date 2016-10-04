FROM debian:sid
MAINTAINER MyName
RUN apt-get update
RUN apt-get install -y apache2 php7.0 libapache2-mod-php7.0 php7.0-mysql nano php7.0-curl php7.0-xml
COPY ./sites-available-default-apache2 /etc/apache2/sites-available/000-default.conf  
RUN echo "ServerName myServerName">>/etc/apache2/apache2.conf;
ENV HOSTNAME="myHostname";
RUN a2enmod rewrite
COPY ./www/ /var/www/
RUN chown -R www-data /var/www/
WORKDIR var/www/
EXPOSE 80
