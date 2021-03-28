#base ubuntu image 18.04
FROM ubuntu:18.04

#Disable prompt during package installation
ARG DEBIAN_FRONTEND=noninteractive

#update ubuntu repository
RUN apt update

#Install required applications
RUN apt install -y apache2 curl libapache2-mod-php php-mysql php-cli

#creating directory named pralove and changing ownership and permission of that directory
RUN mkdir /var/www/pralove && \
    chown -R $USER:$USER /var/www/pralove && \
    chmod -R 755 /var/www/pralove

#Copying apache configuration to container
ADD pralove.conf /etc/apache2/sites-available/pralove.conf
ADD pralove /var/www/pralove

#Enabling my configuration and disabling default apache configuration
RUN a2ensite pralove.conf
RUN a2dissite 000-default.conf

#starting apache in container
CMD /usr/sbin/apache2ctl -D FOREGROUND

#Expose port for the application
EXPOSE 80 443
