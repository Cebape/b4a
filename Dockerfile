FROM ubuntu:latest


RUN apt-get update -y
RUN apt-get install nginx -y


COPY index.html /var/www/html/index.html


EXPOSE 80


CMD [ "nginx", "-g", "daemon off;" ]