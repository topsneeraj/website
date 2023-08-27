FROM ubuntu
RUN apt-get update
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y apache2
COPY /home/ubuntu/jagentworkspace/workspace/Job1  /var/www/html 
EXPOSE 80
WORKDIR /usr/sbin
CMD ["apachectl", "-D", "FOREGROUND"]
