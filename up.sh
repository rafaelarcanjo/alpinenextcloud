#!/bin/sh
chown nginx:nginx -R /var/lib/nextcloud/
syslog-ng &&
    nginx -c /etc/nginx/nginx.conf && 
    php-fpm7 &&
    sleep infinity