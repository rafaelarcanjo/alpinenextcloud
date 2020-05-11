FROM alpine:3

LABEL Rafael Arcanjo <rafael.wzs@gmail.com>

RUN apk add --no-cache syslog-ng nextcloud-sqlite nginx php7-fpm openssl sudo certbot-nginx && \
    mkdir /etc/nginx/sites-available /etc/nginx/sites-enabled

VOLUME /var/lib/nextcloud/data/

ADD www.conf    /etc/php7/php-fpm.d/
ADD php.ini     /etc/php7/

ADD     nginx.conf      /etc/nginx/
ADD     localhost       /etc/nginx/sites-available/
COPY    certificados/*  /etc/letsencrypt/live/nomes.space/

ADD     config.php  /etc/nextcloud/
COPY    Updater/*   /usr/share/webapps/nextcloud/lib/private/Updater/
COPY    var/*       /var/lib/nextcloud/data/

ADD up.sh /usr/bin/

RUN mkdir /run/nginx && chown -R nginx:nginx /run/nginx && addgroup nginx www-data && \
    ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/ && \
    cd /var/lib/nextcloud/apps && \
    wget -c https://github.com/nextcloud/mail/releases/download/v1.3.4/mail.tar.gz && \
    tar -xzf mail.tar.gz && \
    chown nginx:nginx -R /usr/share/webapps/nextcloud /var/lib/nextcloud /etc/nextcloud && \
    sudo -u nginx php /usr/share/webapps/nextcloud/occ app:enable mail && \
    chmod u+x /usr/bin/up.sh

CMD up.sh