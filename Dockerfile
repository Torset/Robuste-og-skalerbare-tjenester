FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
RUN ["apt-get", "update", "-y"]
RUN ["apt-get", "install", "-y", "apache2", "libapache2-mod-php", "git", "unzip", "php-pgsql", "wget2", "php-memcache"]

WORKDIR /
RUN git clone https://git.cs.oslomet.no/kyrre.begnum/bookface.git
RUN git clone https://github.com/Torset/Robuste-og-skalerbare-tjenester.git

WORKDIR /var/www/html
RUN rm index.html
RUN mkdir images
RUN cp /bookface/code/* .
RUN cp /Robuste-og-skalerbare-tjenester/config.php .

EXPOSE 80
