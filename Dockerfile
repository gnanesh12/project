FROM devopsedu/webapp
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
RUN apt-get clean
EXPOSE 80
RUN rm /var/www/html/index.html
ADD https://github.com/edureka-devops/projCert.git  /var/www/html
CMD apachectl -D FOREGROUND
