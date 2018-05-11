#!/bin/bash -x

DOMAIN=$1
project=$2 

cat <<EOF > /etc/apache2/sites-availabe/jekyll.conf
<VirtualHost *:80>
	ServerName $DOMAIN
	DocumentRoot /var/www/jekyll/$project/
</VirtualHost>
EOF

cat <<EOF > /var/jekyll/$project/_config.yml
destination: /var/www/jekyll/$project/
EOF

service apache2 restart
