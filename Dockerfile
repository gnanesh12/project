FROM devopsedu/webapp
RUN mkdir docker
WORKDIR /docker
RUN yum update -y
RUN yum install httpd
RUN rm -f /var/www/html/index.html
ADD https://github.com/edureka-devops/projCert.git  /var/www/html
EXPOSE 80
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
