FROM manish2goood/mydockerclass:v1

MAINTAINER "ekamjeet@gmail.com"

RUN yum install unzip -y

COPY index.html /var/www/html

WORKDIR  /var/www/html

EXPOSE 80

ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
