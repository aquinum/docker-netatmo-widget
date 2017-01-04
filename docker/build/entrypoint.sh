#!/bin/bash

CONFIG_FILE="/config.user.inc.php"
APP_DIRECTORY="/usr/share/nginx/html"

sed -i \
    -e "s/____EMAIL_ACCOUNT_HERE____/${ACCOUNT_EMAIL}/" \
    -e "s/____PASS_ACCOUNT_HERE____/${ACCOUNT_PASSWORD}/" \
    -e "s/____API_CLIENT_ID_HERE____/${API_CLIENT_ID}/" \
    -e "s/____API_CLIENT_SECRET_HERE____/${API_CLIENT_SECRET}/" \
    ${CONFIG_FILE}

mv ${CONFIG_FILE} ${APP_DIRECTORY}

mkdir /run/nginx # fix for broken nginx install...
supervisord -c /etc/supervisor/supervisord.conf
