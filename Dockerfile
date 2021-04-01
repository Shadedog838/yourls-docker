FROM 1.8-apache

WORKDIR /usr/src/app

COPY . .

RUN yum -y install httpd

EXPOSE 5000

CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
