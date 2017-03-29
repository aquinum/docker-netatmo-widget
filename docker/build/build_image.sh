#!/bin/bash

apk add --update nginx php5-fpm php5-json php5-gettext php5-curl php5-intl supervisor tzdata
ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime

adduser -D netatmo

chown -R netatmo: /var/www/localhost/htdocs
