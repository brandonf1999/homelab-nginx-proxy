#!/bin/bash

CERT_PATH='./lets-encrypt'
DOMAIN='guac.foos.net'
EMAIL='webmaster@foos.net'

mkdir -p $CERT_PATH

docker run --rm -p 80:80 -p 443:443 \
    -v ${CERT_PATH}:/etc/letsencrypt \
    certbot/certbot certonly -d $DOMAIN \
    --standalone -m $EMAIL --agree-tos
