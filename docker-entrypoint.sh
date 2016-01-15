#!/bin/bash
set -e

if [[  $REDIRECT_HTTPS != "True" ]]; then
    rm -f /etc/nginx/conf/redirect-https.conf
fi

if [ "$1" = 'nginx-daemon' ]; then
    exec nginx -g "daemon off;";
fi

exec "$@"
