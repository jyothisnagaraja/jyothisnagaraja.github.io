#!/bin/sh

export NGINX_USER=${NGINX_USER:-'nobody'}
export NGINX_CONF=${NGINX_CONF:-'/etc/nginx/nginx.conf'}
envsubst '${NGINX_USER} ${NGINX_CONF}' < /tmp/nginx.conf.tpl > $NGINX_CONF

/usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
