#!/bin/bash -x

DOMAIN=$1
project=$2 

if [[ -d $project ]]; then
        echo "The Project '$project' already exists."
        echo "Delete it first with: ds project-rm $project"
        exit 1
fi

jekyll new $project


<<ADDTIONAL    #trying to add multi domain site


cat <<EOF >> /etc/apache2/sites-enabled/jekyll.conf
<VirtualHost *:80>
	ServerName $DOMAIN
	DocumentRoot /var/www/jekyll/$project/
</VirtualHost>
EOF

cat <<EOF >> /etc/apache2/sites-available/jekyll.conf
<VirtualHost *:80>
	ServerName $DOMAIN
	DocumentRoot /var/www/jekyll/$project/
</VirtualHost>
EOF
ADDTIONAL


cat <<EOF >> /var/jekyll/$project/_config.yml
destination: /var/www/default/
EOF

service apache2 restart
