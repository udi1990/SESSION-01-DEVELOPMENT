FROM CENTOS
RUN yum update -y
RUN yum install httpd -y
COPY index.html /var/www/html/
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
