#!/bin/bash
docker container rm -f alpine
docker build --tag rafaelarcanjo/vps:alpinecloud .
docker container run -d -p 80:80 -p 443:443 \
    -v dbnextcloud:/var/lib/nextcloud/data/ \
    -v /var/log/docker/nextcloud/:/var/log/nginx/ \
    -v /var/log/docker/nextcloud/:/var/log/nextcloud/ \
    --name alpine rafaelarcanjo/vps:alpinenextcloud
