#!/bin/bash

apk add --update nginx php-fpm php-json php-gettext php-curl supervisor

adduser -D netatmo

chown -R netatmo: /var/www/localhost/htdocs
