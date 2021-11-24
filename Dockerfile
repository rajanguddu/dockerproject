FROM httpd:2.4
WORKDIR /usr/local/apache2/htdocs/
RUN echo "My container on HTTPD" > index.html
