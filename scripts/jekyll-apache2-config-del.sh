#!/bin/bash -x



project=$1
DOMAIN=$project.jekyll.example.org



rm -rf /var/www/$project

### delete configuration file

a2dissite $DOMAIN
service apache2 restart

rm -rf /etc/apache2/sites-available/$DOMAIN.conf
rm -rf /etc/apache2/sites-available/$DOMAIN.conf

service apache2 restart

echo "project with render data delected"


