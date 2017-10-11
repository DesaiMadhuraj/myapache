FROM centos
# Install dependencies
RUN yum -y update
RUN yum -y install  git httpd

COPY index.html /var/www/html
VOLUME /var/www/html
VOLUME /var/log
CMD ["apachectl", "-D",  "FOREGROUND"]

