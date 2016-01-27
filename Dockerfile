FROM nginx

MAINTAINER David Noyes <david@raspberrypython.com>

RUN apt-get -yq update && apt-get -yq install uuid-runtime

COPY index.html /usr/share/nginx/html/index.html

CMD /bin/sed -i "s/<h1>Nginx server [0-9]*/<h1>Nginx server $(/usr/bin/uuidgen)/" /usr/share/nginx/html/index.html && nginx -g 'daemon off;'
