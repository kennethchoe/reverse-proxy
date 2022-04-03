#!/bin/sh
echo "hello world"

###############
# get the cert
###############
nginx -g "daemon on;"
# if you have one domain name for one web server
certbot --nginx -d your.domain1.name -m your@email.com --agree-tos -n
# if you have multiple domain name aliases for one web server
certbot --nginx -d your.domain2.name -d www.your.domain2.name -m your@email.com --agree-tos -n
nginx -s stop

###############
# switch to the real config
###############
mv /artifacts/sites-available-default /etc/nginx/conf.d/default.conf
nginx -g "daemon off;"