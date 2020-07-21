FROM centos
# using centos base image here i will be installing NOW
MAINTAINER rohit@linux.com
RUN yum install httpd -y
WORKDIR /var/www/html
# changing directory during build time workdir is same as cd command
ADD . . 
# source Destination
EXPOSE 80
# default httpd port
ENTRYPOINT httpd -DFOREGROUND
# start web server as default process

