#!/bin/bash

apk add --update nginx php5-fpm php5-json php5-gettext php5-curl supervisor

adduser -D netatmo

chown -R netatmo: /var/www/localhost/htdocs
