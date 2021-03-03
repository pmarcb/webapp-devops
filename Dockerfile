FROM ubuntu:latest
MAINTAINER "pmborras@optigame.com"
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install -y  git nginx
EXPOSE 80
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/ 
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
