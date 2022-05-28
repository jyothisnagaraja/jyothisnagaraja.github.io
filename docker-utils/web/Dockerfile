FROM alpine:3.14

RUN apk add bash git openssh supervisor curl imagemagick gettext nginx nginx-mod-http-headers-more

COPY config/nginx.conf /etc/nginx/nginx.conf
COPY config/nginx.conf /tmp/nginx.conf.tpl
COPY config/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY config/nginx-selfsigned.crt /etc/nginx/certs/ssl.crt
COPY config/nginx-selfsigned.key /etc/nginx/certs/ssl.key
COPY config/dhparam.pem /etc/nginx/certs/dhparam.pem
RUN mkdir /etc/nginx/snippets
COPY config/self-signed.conf /etc/nginx/snippets/
COPY config/ssl-params.conf /etc/nginx/snippets/

EXPOSE 443

CMD ["sh", "/var/www/html/docker-utils/web/docker-run.sh"]
