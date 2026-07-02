FROM ubuntu

RUN apt-get update
RUN apt-get install -y nginx

WORKDIR /var/www/html

COPY index.html ./index.html

ENTRYPOINT ["nginx", "-g", "daemon off;"]