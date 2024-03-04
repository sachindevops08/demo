FROM ubuntu
RUN apt update -y
RUN apt install -y apache2 \
  zip \
  unzip 
RUN apt install apache2-utils -y
RUN apt-get clean
ADD https://www.free-css.com/assets/files/free-css-templates/download/page293/chocolux.zip /var/www/html/ 
WORKDIR /var/www/html
RUN unzip chocolux.zip
RUN cp -rvf chocolux-html/* .
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D". "FOREGROUND"]


