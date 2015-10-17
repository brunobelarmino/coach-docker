#App Web

FROM ubuntu

MAINTAINER Bruno Belarmino <bb.belarmino@gmail.com>

RUN sudo apt-get -y update

RUN sudo apt-get install -y nginx

ADD ./nginx.conf /etc/nginx/

ADD ./site /usr/share/nginx/html

EXPOSE 80

ENTRYPOINT sudo service nginx start
