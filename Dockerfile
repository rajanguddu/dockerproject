FROM httpd:2.4
RUN apt update -y
RUN apt install wget -y
RUN apt install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/digigram.zip /usr/local/apache2/htdocs/
WORKDIR /usr/local/apache2/htdocs/
RUN unzip digigram.zip
RUN cp -rvf digigram/* .
RUN rm -rf digigram.zip digigram
