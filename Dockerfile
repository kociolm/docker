FROM alpine

RUN apk add --no-cache lighttpd

RUN \
  echo 'server.dir-listing = "enable"' >> /etc/lighttpd/lighttpd.conf \
  && rm -rf /var/www/html

COPY html/ /var/www/

COPY start.sh /usr/local/bin/

ENTRYPOINT ["start.sh"]