FROM devopsedu/webapp
RUN yum update -y
RUN yum install httpd
RUN rm -f /var/www/html/index.html
ADD website /var/www/html
EXPOSE 80
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
