FROM docker.io/mhubig/partkeepr:latest
MAINTAINER "bastian@bdebyl.net"

ADD entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
CMD ["apache2-foreground"]
