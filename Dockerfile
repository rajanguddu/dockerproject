FROM httpd:2.4
RUN apt update -y
RUN apt install wget -y
RUN apt install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/speed.zip /usr/local/apache2/htdocs/
WORKDIR /usr/local/apache2/htdocs/
RUN unzip speed.zip
RUN cp -rvf speed/* .
#RUN rm -rf speed.zip speed
