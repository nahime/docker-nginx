#!/bin/bash
sed -i "s|<NGINX_APP_PATH>|$NGINX_APP_PATH|" /etc/nginx/sites-available/default
service nginx start
tail -f /var/log/nginx/access.log /var/log/nginx/error.log
