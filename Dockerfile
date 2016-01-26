FROM nginx

MAINTAINER David Noyes <david@raspberrypython.com>

COPY index.html /usr/share/nginx/html/index.html

ENV NGINXSERVERNUM 1

CMD /bin/sed -i "s/<h1>Nginx server [0-9]*/<h1>Nginx server ${NGINXSERVERNUM}/" /usr/share/nginx/html/index.html && nginx -g 'daemon off;'
